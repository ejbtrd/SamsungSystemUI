.class public Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;
.super Ljava/lang/Object;
.source "DisplayImeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/common/DisplayImeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PerDisplay"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;
    }
.end annotation


# instance fields
.field mAnimateAlpha:Z

.field mAnimation:Landroid/animation/ValueAnimator;

.field mAnimationDirection:I

.field final mDisplayId:I

.field final mImeFrame:Landroid/graphics/Rect;

.field mImeShowing:Z

.field mImeSourceControl:Landroid/view/InsetsSourceControl;

.field protected final mInsetsControllerImpl:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;

.field final mInsetsState:Landroid/view/InsetsState;

.field mRotation:I

.field final synthetic this$0:Lcom/android/wm/shell/common/DisplayImeController;


# direct methods
.method public static synthetic $r8$lambda$c3m1s12-Va-gtkj_2rw08oxYwxU(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;FZFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->lambda$startAnimation$0(FZFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/DisplayImeController;II)V
    .locals 1

    .line 226
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance p1, Landroid/view/InsetsState;

    invoke-direct {p1}, Landroid/view/InsetsState;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    .line 216
    new-instance p1, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;-><init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsControllerImpl:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;

    const/4 p1, 0x0

    .line 218
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    const/4 v0, 0x0

    .line 219
    iput v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    .line 220
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    .line 221
    iput v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotation:I

    .line 222
    iput-boolean v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    .line 223
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 224
    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimateAlpha:Z

    .line 227
    iput p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    .line 228
    iput p3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mRotation:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;ZZ)V
    .locals 0

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;F)I
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->imeTop(F)I

    move-result p0

    return p0
.end method

.method private applyVisibilityToLeash(Landroid/view/InsetsSourceControl;)V
    .locals 2

    .line 331
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-static {v0}, Lcom/android/wm/shell/common/DisplayImeController;->access$400(Lcom/android/wm/shell/common/DisplayImeController;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 334
    iget-boolean v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 339
    :goto_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 340
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-static {p0}, Lcom/android/wm/shell/common/DisplayImeController;->access$400(Lcom/android/wm/shell/common/DisplayImeController;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_1
    return-void
.end method

.method private calcIsFloating(Landroid/view/InsetsSource;)Z
    .locals 2

    .line 386
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 387
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 395
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-static {v0}, Lcom/android/wm/shell/common/DisplayImeController;->access$500(Lcom/android/wm/shell/common/DisplayImeController;)Lcom/android/wm/shell/common/DisplayController;

    move-result-object v0

    iget p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    .line 396
    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->navBarFrameHeight()I

    move-result p0

    if-gt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private imeTop(F)I
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_0

    .line 379
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, v0

    :goto_0
    float-to-int p1, p1

    add-int/2addr p0, p1

    return p0

    .line 382
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method private synthetic lambda$startAnimation$0(FZFFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-static {v0}, Lcom/android/wm/shell/common/DisplayImeController;->access$400(Lcom/android/wm/shell/common/DisplayImeController;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 457
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    .line 458
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 459
    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimateAlpha:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    :goto_0
    sub-float p1, p5, p3

    sub-float/2addr p4, p3

    div-float/2addr p1, p4

    .line 461
    :goto_1
    iget-object p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {p2}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 462
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-direct {p0, p5}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->imeTop(F)I

    move-result p3

    invoke-static {p1, p2, p3, v0}, Lcom/android/wm/shell/common/DisplayImeController;->access$1000(Lcom/android/wm/shell/common/DisplayImeController;IILandroid/view/SurfaceControl$Transaction;)V

    .line 463
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 464
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-static {p0}, Lcom/android/wm/shell/common/DisplayImeController;->access$400(Lcom/android/wm/shell/common/DisplayImeController;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private setVisibleDirectly(Z)V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 371
    :try_start_0
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object p1, p1, Lcom/android/wm/shell/common/DisplayImeController;->mWmService:Landroid/view/IWindowManager;

    iget v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    invoke-interface {p1, v0, p0}, Landroid/view/IWindowManager;->modifyDisplayWindowInsets(ILandroid/view/InsetsState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private startAnimation(ZZ)V
    .locals 16

    move-object/from16 v8, p0

    move/from16 v9, p1

    .line 400
    iget-object v0, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 401
    iget-object v1, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-nez v1, :cond_0

    goto/16 :goto_9

    .line 404
    :cond_0
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 405
    invoke-direct {v8, v0}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->calcIsFloating(Landroid/view/InsetsSource;)Z

    move-result v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_1

    if-eqz v9, :cond_1

    move v6, v11

    goto :goto_0

    :cond_1
    move v6, v10

    :goto_0
    if-eqz v6, :cond_2

    .line 409
    iget-object v0, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 410
    iget-object v0, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-static {v0}, Lcom/android/wm/shell/common/DisplayImeController;->access$500(Lcom/android/wm/shell/common/DisplayImeController;)Lcom/android/wm/shell/common/DisplayController;

    move-result-object v0

    iget v1, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->density()F

    move-result v0

    const/high16 v1, -0x3d600000    # -80.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 412
    iget-object v1, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 413
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_3

    .line 415
    iget-object v0, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 417
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/wm/shell/common/DisplayImeController;->access$100()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_6

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Run startAnim  show:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  was:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    iget v2, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-ne v2, v11, :cond_4

    const-string v2, "SHOW"

    goto :goto_2

    :cond_4
    if-ne v2, v1, :cond_5

    const-string v2, "HIDE"

    goto :goto_2

    :cond_5
    const-string v2, "NONE"

    .line 420
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DisplayImeController"

    .line 418
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-nez p2, :cond_7

    .line 422
    iget v0, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-ne v0, v11, :cond_7

    if-nez v9, :cond_8

    :cond_7
    iget v0, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-ne v0, v1, :cond_9

    if-nez v9, :cond_9

    :cond_8
    return-void

    :cond_9
    const/4 v0, 0x0

    .line 428
    iget-object v2, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_b

    .line 429
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 430
    iget-object v0, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v2, v11

    goto :goto_3

    :cond_a
    move v2, v10

    .line 433
    :goto_3
    iget-object v3, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_4

    :cond_b
    move v2, v10

    .line 435
    :goto_4
    iget-object v3, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v7, v3

    .line 436
    iget-object v3, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v12, v3

    .line 437
    iget-object v3, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float v13, v7, v3

    if-eqz v9, :cond_c

    move v14, v13

    goto :goto_5

    :cond_c
    move v14, v7

    :goto_5
    if-eqz v9, :cond_d

    move v15, v7

    goto :goto_6

    :cond_d
    move v15, v13

    .line 441
    :goto_6
    iget v3, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    if-nez v3, :cond_e

    iget-boolean v3, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-eqz v3, :cond_e

    if-eqz v9, :cond_e

    move v0, v7

    move v2, v11

    :cond_e
    if-eqz v9, :cond_f

    move v3, v11

    goto :goto_7

    :cond_f
    move v3, v1

    .line 446
    :goto_7
    iput v3, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    .line 447
    invoke-direct/range {p0 .. p1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->updateImeVisibility(Z)V

    new-array v1, v1, [F

    aput v14, v1, v10

    aput v15, v1, v11

    .line 448
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_10

    const-wide/16 v3, 0x113

    goto :goto_8

    :cond_10
    const-wide/16 v3, 0x154

    .line 449
    :goto_8
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_11

    .line 452
    iget-object v1, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    sub-float/2addr v0, v14

    sub-float v2, v15, v14

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 455
    :cond_11
    iget-object v5, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v12

    move v3, v6

    move-object v11, v4

    move v4, v13

    move-object v10, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;FZFF)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 466
    iget-object v0, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/wm/shell/common/DisplayImeController;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 467
    iget-object v10, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;

    move-object v0, v11

    move-object/from16 v1, p0

    move v3, v14

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$1;-><init>(Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;FFFFZF)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez v9, :cond_12

    const/4 v0, 0x0

    .line 521
    invoke-direct {v8, v0}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->setVisibleDirectly(Z)V

    .line 523
    :cond_12
    iget-object v0, v8, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    if-eqz v9, :cond_13

    const/4 v0, 0x1

    .line 527
    invoke-direct {v8, v0}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->setVisibleDirectly(Z)V

    :cond_13
    :goto_9
    return-void
.end method

.method private updateImeVisibility(Z)V
    .locals 1

    .line 532
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-eq v0, p1, :cond_0

    .line 533
    iput-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    .line 534
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/common/DisplayImeController;->access$900(Lcom/android/wm/shell/common/DisplayImeController;IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected hideInsets(IZ)V
    .locals 0

    .line 354
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    return-void

    .line 357
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/common/DisplayImeController;->access$100()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "DisplayImeController"

    const-string p2, "Got hideInsets for ime"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    .line 358
    invoke-direct {p0, p1, p1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZ)V

    return-void
.end method

.method protected insetsChanged(Landroid/view/InsetsState;)V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 245
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    .line 248
    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    const/16 v2, 0x13

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimationDirection:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->updateImeVisibility(Z)V

    .line 256
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 258
    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v3, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    .line 260
    iget-object v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsState:Landroid/view/InsetsState;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 261
    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-eqz p1, :cond_3

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    .line 265
    invoke-static {}, Lcom/android/wm/shell/common/DisplayImeController;->access$100()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "DisplayImeController"

    const-string v0, "insetsChanged when IME showing, restart animation"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_2
    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    invoke-direct {p0, p1, v4}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZ)V

    :cond_3
    return-void
.end method

.method protected insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 7

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->insetsChanged(Landroid/view/InsetsState;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 276
    array-length v1, p2

    move v2, p1

    move-object v3, v0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v4, p2, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 280
    :cond_0
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v5

    const/16 v6, 0x13

    if-ne v5, v6, :cond_1

    move-object v3, v4

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insetsControlChanged(), ime control is null, anim="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "DisplayImeController"

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_3

    .line 288
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->end()V

    .line 290
    :cond_3
    iput-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    move-object v3, v0

    .line 294
    :cond_4
    iget-object p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    const/4 v1, 0x1

    if-eqz p2, :cond_5

    move p2, v1

    goto :goto_2

    :cond_5
    move p2, p1

    :goto_2
    if-eqz v3, :cond_6

    move p1, v1

    :cond_6
    if-eq p2, p1, :cond_7

    .line 297
    iget-object p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-static {p2, v2, p1}, Lcom/android/wm/shell/common/DisplayImeController;->access$200(Lcom/android/wm/shell/common/DisplayImeController;IZ)V

    :cond_7
    if-eqz p1, :cond_e

    .line 301
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz p1, :cond_8

    .line 302
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v0

    .line 304
    :cond_8
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    .line 305
    iget-object p2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    .line 306
    invoke-static {p2, v3}, Lcom/android/wm/shell/common/DisplayImeController;->access$300(Landroid/view/InsetsSourceControl;Landroid/view/InsetsSourceControl;)Z

    move-result p2

    xor-int/2addr p2, v1

    .line 307
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    if-eqz p2, :cond_9

    .line 310
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_3

    :cond_9
    if-eqz p1, :cond_c

    .line 313
    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    invoke-direct {p0, p1, v1}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZ)V

    goto :goto_3

    :cond_a
    if-eqz p2, :cond_b

    .line 317
    invoke-direct {p0, v3}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->applyVisibilityToLeash(Landroid/view/InsetsSourceControl;)V

    .line 319
    :cond_b
    iget-boolean p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeShowing:Z

    if-nez p1, :cond_c

    .line 320
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayImeController;->removeImeSurface()V

    .line 323
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz p1, :cond_d

    .line 324
    sget-object p2, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p2}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 326
    :cond_d
    iput-object v3, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    :cond_e
    return-void
.end method

.method public register()V
    .locals 3

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->this$0:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayImeController;->mWmService:Landroid/view/IWindowManager;

    iget v1, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    iget-object v2, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mInsetsControllerImpl:Lcom/android/wm/shell/common/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->setDisplayWindowInsetsController(ILandroid/view/IDisplayWindowInsetsController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to set insets controller on display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->mDisplayId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DisplayImeController"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected showInsets(IZ)V
    .locals 0

    .line 345
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    return-void

    .line 348
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/common/DisplayImeController;->access$100()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "DisplayImeController"

    const-string p2, "Got showInsets for ime"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 349
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/common/DisplayImeController$PerDisplay;->startAnimation(ZZ)V

    return-void
.end method

.method public topFocusedWindowChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
