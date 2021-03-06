.class public Lcom/android/systemui/animation/ActivityLaunchAnimator$State;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field private bottom:I

.field private bottomCornerRadius:F

.field private left:I

.field private right:I

.field private final startBottom:I

.field private final startCenterX:F

.field private final startCenterY:F

.field private final startHeight:I

.field private final startLeft:I

.field private final startRight:I

.field private final startTop:I

.field private final startWidth:I

.field private top:I

.field private topCornerRadius:F

.field private visible:Z


# direct methods
.method public constructor <init>(IIIIFF)V
    .locals 0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->top:I

    .line 315
    iput p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->bottom:I

    .line 316
    iput p3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->left:I

    .line 317
    iput p4, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->right:I

    .line 319
    iput p5, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->topCornerRadius:F

    .line 320
    iput p6, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->bottomCornerRadius:F

    .line 322
    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startTop:I

    .line 323
    iput p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startBottom:I

    .line 324
    iput p3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startLeft:I

    .line 325
    iput p4, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startRight:I

    .line 326
    invoke-virtual {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startWidth:I

    .line 327
    invoke-virtual {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startHeight:I

    .line 328
    invoke-virtual {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getCenterX()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startCenterX:F

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getCenterY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startCenterY:F

    const/4 p1, 0x1

    .line 362
    iput-boolean p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->visible:Z

    return-void
.end method


# virtual methods
.method public final getBottom()I
    .locals 0

    .line 315
    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->bottom:I

    return p0
.end method

.method public getBottomChange()I
    .locals 1

    .line 341
    iget v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->bottom:I

    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startBottom:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getBottomCornerRadius()F
    .locals 0

    .line 320
    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->bottomCornerRadius:F

    return p0
.end method

.method public final getCenterX()F
    .locals 2

    .line 356
    iget v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public final getCenterY()F
    .locals 2

    .line 359
    iget v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 335
    iget v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->bottom:I

    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->top:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getHeightRatio()F
    .locals 1

    .line 353
    invoke-virtual {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startHeight:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final getLeft()I
    .locals 0

    .line 316
    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->left:I

    return p0
.end method

.method public final getLeftChange()I
    .locals 1

    .line 344
    iget v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->left:I

    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startLeft:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getRight()I
    .locals 0

    .line 317
    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->right:I

    return p0
.end method

.method public final getRightChange()I
    .locals 1

    .line 347
    iget v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->right:I

    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startRight:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getStartCenterX()F
    .locals 0

    .line 328
    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startCenterX:F

    return p0
.end method

.method public final getStartCenterY()F
    .locals 0

    .line 329
    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startCenterY:F

    return p0
.end method

.method public final getTop()I
    .locals 0

    .line 314
    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->top:I

    return p0
.end method

.method public getTopChange()I
    .locals 1

    .line 338
    iget v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->top:I

    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startTop:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getTopCornerRadius()F
    .locals 0

    .line 319
    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->topCornerRadius:F

    return p0
.end method

.method public final getVisible()Z
    .locals 0

    .line 362
    iget-boolean p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->visible:Z

    return p0
.end method

.method public final getWidth()I
    .locals 1

    .line 332
    iget v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->right:I

    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->left:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getWidthRatio()F
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->startWidth:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final setBottom(I)V
    .locals 0

    .line 315
    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->bottom:I

    return-void
.end method

.method public final setBottomCornerRadius(F)V
    .locals 0

    .line 320
    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->bottomCornerRadius:F

    return-void
.end method

.method public final setLeft(I)V
    .locals 0

    .line 316
    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->left:I

    return-void
.end method

.method public final setRight(I)V
    .locals 0

    .line 317
    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->right:I

    return-void
.end method

.method public final setTop(I)V
    .locals 0

    .line 314
    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->top:I

    return-void
.end method

.method public final setTopCornerRadius(F)V
    .locals 0

    .line 319
    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->topCornerRadius:F

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    .line 362
    iput-boolean p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->visible:Z

    return-void
.end method
