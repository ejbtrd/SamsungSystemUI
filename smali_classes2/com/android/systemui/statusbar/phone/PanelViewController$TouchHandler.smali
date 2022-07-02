.class public Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;
.super Ljava/lang/Object;
.source "PanelViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V
    .locals 0

    .line 1372
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1300(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1400(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1600(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1602(Lcom/android/systemui/statusbar/phone/PanelViewController;I)I

    move v0, v1

    .line 1402
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1403
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1404
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->canCollapsePanelOnTouch()Z

    move-result v3

    .line 1406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_a

    if-eq v4, v5, :cond_9

    const/4 v6, 0x2

    if-eq v4, v6, :cond_6

    const/4 v0, 0x3

    if-eq v4, v0, :cond_9

    const/4 v0, 0x5

    if-eq v4, v0, :cond_4

    const/4 v0, 0x6

    if-eq v4, v0, :cond_2

    goto/16 :goto_2

    .line 1436
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1437
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1600(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result v2

    if-ne v2, v0, :cond_d

    .line 1439
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v5

    .line 1440
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1602(Lcom/android/systemui/statusbar/phone/PanelViewController;I)I

    .line 1441
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2202(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1442
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2102(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    goto/16 :goto_2

    .line 1446
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-eq v0, v5, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1447
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2900(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1448
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1449
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_2

    .line 1453
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2100(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v4

    sub-float v4, v0, v4

    .line 1454
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v6, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    if-nez v3, :cond_7

    .line 1455
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2300(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1456
    :cond_7
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1457
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result p1

    neg-float v6, p1

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_8

    .line 1458
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v4

    if-eqz v4, :cond_d

    cmpl-float p1, v3, p1

    if-lez p1, :cond_d

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1459
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2200(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result p1

    sub-float p1, v2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v3, p1

    if-lez p1, :cond_d

    .line 1460
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 1461
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {p0, v2, v0, v5, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandMotion(FFZF)V

    return v5

    .line 1468
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_2

    .line 1408
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    .line 1409
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_b

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v4

    if-nez v4, :cond_b

    move v4, v5

    goto :goto_1

    :cond_b
    move v4, v1

    :goto_1
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1702(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1410
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1802(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1411
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mDownTime:J

    .line 1412
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-nez v4, :cond_c

    .line 1413
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 1414
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1416
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAnimatingOnDown : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mClosing : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1417
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,!mHintAnimationRunning : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    xor-int/2addr p0, v5

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    move-object v7, p1

    .line 1416
    invoke-static/range {v6 .. v11}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;ZZLjava/lang/String;Z)V

    return v5

    .line 1423
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2102(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1424
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2202(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1425
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isInContentBounds(FF)Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2302(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1426
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceededBeforeDown:Z

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1427
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1428
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1429
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2502(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1430
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2602(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1431
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$602(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1432
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2702(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    .line 1474
    :cond_d
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_e

    move v1, v5

    :cond_e
    return v1

    .line 1377
    :cond_f
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PVC.InterceptTouchEvent mInstantExpanding : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1378
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ,mNotificationsDragEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1379
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ,mTouchDisabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1380
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1300(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ,mMotionAborted : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1381
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1400(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " ,event.getActionMasked() :"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, p1

    .line 1377
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;ZZLjava/lang/String;Z)V

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1480
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 1481
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "PVC.onTouch "

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;ZZLjava/lang/String;Z)V

    .line 1485
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1486
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1487
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    .line 1489
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    .line 1490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "isDozing "

    move-object v1, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;ZZLjava/lang/String;Z)V

    :cond_1
    return v6

    .line 1497
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1300(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_3

    .line 1498
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v2, :cond_25

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1400(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1499
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_8

    .line 1513
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v1

    const/4 v8, 0x1

    if-nez v1, :cond_6

    .line 1514
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v2, :cond_5

    .line 1516
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    .line 1519
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNotificationsDragEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1520
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, p2

    .line 1519
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;ZZLjava/lang/String;Z)V

    return v7

    .line 1526
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x2002

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-nez v4, :cond_9

    .line 1534
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1400(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_7

    .line 1535
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v2, v7}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1539
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v8, :cond_8

    .line 1540
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/phone/PanelViewController;->expand(Z)V

    .line 1544
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFullyCollapsed() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ,event.isFromSource(InputDevice.SOURCE_MOUSE) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,!mTracking : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    xor-int/2addr v0, v8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v2

    move-object v1, p2

    move v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    .line 1544
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;ZZLjava/lang/String;Z)V

    return v8

    .line 1558
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1600(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_a

    .line 1561
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1602(Lcom/android/systemui/statusbar/phone/PanelViewController;I)I

    move v1, v7

    .line 1563
    :cond_a
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1564
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1566
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_d

    .line 1567
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldGestureWaitForTouchSlop()Z

    move-result v5

    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3202(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1568
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldGestureIgnoreXTouchSlop(FF)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_0

    :cond_b
    move v5, v7

    goto :goto_1

    :cond_c
    :goto_0
    move v5, v8

    :goto_1
    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3302(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1571
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_1b

    if-eq v1, v8, :cond_19

    const/4 v6, 0x2

    if-eq v1, v6, :cond_12

    if-eq v1, v2, :cond_19

    const/4 v2, 0x5

    if-eq v1, v2, :cond_10

    const/4 v2, 0x6

    if-eq v1, v2, :cond_e

    goto/16 :goto_7

    .line 1607
    :cond_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1608
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1600(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result v2

    if-ne v2, v1, :cond_22

    .line 1610
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v1, :cond_f

    move v1, v7

    goto :goto_2

    :cond_f
    move v1, v8

    .line 1611
    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1612
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1613
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1602(Lcom/android/systemui/statusbar/phone/PanelViewController;I)I

    .line 1614
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, v8}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3502(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1615
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget v4, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {v1, v3, v2, v8, v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandMotion(FFZF)V

    .line 1616
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, v7}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3502(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1618
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "ACTION_POINTER_UP : "

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;ZZLjava/lang/String;Z)V

    goto/16 :goto_7

    .line 1623
    :cond_10
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    if-ne v1, v8, :cond_11

    .line 1624
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, v8}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1625
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, p2, v3, v4, v8}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3600(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;FFZ)V

    .line 1627
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v4, "ACTION_POINTER_DOWN : "

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;ZZLjava/lang/String;Z)V

    return v7

    .line 1632
    :cond_11
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1633
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2900(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1634
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, v8}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1635
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3700(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;FFZZ)V

    .line 1637
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v4, "ACTION_POINTER_DOWN_NOTI_SUPPORT_FORCE_COLLAPSE_PANEL : "

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;ZZLjava/lang/String;Z)V

    return v7

    .line 1643
    :cond_12
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    .line 1644
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2100(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v1

    sub-float v1, v4, v1

    .line 1648
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v6, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_15

    .line 1649
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2200(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v6

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_13

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1650
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3300(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1651
    :cond_13
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v2, v8}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1652
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v6, v2, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-nez v6, :cond_15

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2500(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1653
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3800(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v2

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_14

    .line 1654
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget v2, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {v1, v3, v4, v7, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandMotion(FFZF)V

    move v1, v5

    .line 1657
    :cond_14
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 1658
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStarted()V

    .line 1661
    :cond_15
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3800(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v2

    add-float/2addr v2, v1

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1662
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1800(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    neg-float v5, v1

    .line 1663
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3900(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_16

    .line 1664
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v5, v8}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2702(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1665
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v5, v3, v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$4100(Lcom/android/systemui/statusbar/phone/PanelViewController;FF)Z

    move-result v3

    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$4002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1667
    :cond_16
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v3, :cond_22

    :cond_17
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isTrackingBlocked()Z

    move-result v3

    if-nez v3, :cond_22

    .line 1668
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1670
    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "newHeight set to NaN - , h : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mInitialTouchY : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1673
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2100(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mExpandedHeight : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mInitialOffsetOnTouch : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1675
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3800(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1670
    invoke-static {v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :cond_18
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeightInternal(F)V

    goto/16 :goto_7

    .line 1683
    :cond_19
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    .line 1684
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, p2, v3, v4, v7}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3600(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;FFZ)V

    .line 1686
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_22

    .line 1687
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v8, :cond_1a

    .line 1688
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, v7}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$4200(Lcom/android/systemui/statusbar/phone/PanelViewController;I)V

    goto/16 :goto_7

    .line 1690
    :cond_1a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, v7}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$4300(Lcom/android/systemui/statusbar/phone/PanelViewController;I)V

    goto/16 :goto_7

    .line 1573
    :cond_1b
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget v2, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {v1, v3, v4, v7, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandMotion(FFZF)V

    .line 1574
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1802(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    .line 1575
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1576
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, v7}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2602(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1577
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, v7}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$602(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1578
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, v7}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1579
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mDownTime:J

    .line 1580
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, v7}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2702(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1581
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1582
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v2

    if-eqz v2, :cond_1c

    move v2, v8

    goto :goto_3

    :cond_1c
    move v2, v7

    .line 1581
    :goto_3
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2502(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1583
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    .line 1584
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1d

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-nez v2, :cond_1d

    .line 1585
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v1

    if-nez v1, :cond_1d

    move v1, v8

    goto :goto_4

    :cond_1d
    move v1, v7

    .line 1586
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v2

    if-eqz v2, :cond_1e

    if-eqz v1, :cond_21

    .line 1587
    :cond_1e
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    if-nez v1, :cond_20

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceededBeforeDown:Z

    if-eqz v1, :cond_1f

    goto :goto_5

    :cond_1f
    move v1, v7

    goto :goto_6

    :cond_20
    :goto_5
    move v1, v8

    :goto_6
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    .line 1589
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 1590
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStarted()V

    .line 1594
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_DOWN isFullyCollapsed(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", !mHeadsUpManager.hasPinnedHeadsUp(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1595
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v2

    xor-int/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", !mStatusBar.isBouncerShowing(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1596
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v2

    xor-int/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1597
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;ZZLjava/lang/String;Z)V

    .line 1600
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1601
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_22

    .line 1602
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3400(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    .line 1695
    :cond_22
    :goto_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v0, :cond_24

    :cond_23
    move v7, v8

    :cond_24
    return v7

    .line 1502
    :cond_25
    :goto_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PVC.onTouch mInstantExpanding : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1503
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ,mTouchDisabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1504
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1300(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ,mMotionAborted : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 1505
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1400(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ,event.getActionMasked() :"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, p2

    .line 1502
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;ZZLjava/lang/String;Z)V

    return v7
.end method
