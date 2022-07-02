.class Lcom/samsung/android/edgelighting/view/MorphView$2;
.super Ljava/lang/Object;
.source "MorphView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/MorphView;->show(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/MorphView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/MorphView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 557
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$2;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    .line 561
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$2;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/view/MorphView;->access$300(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 563
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 564
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/MorphView$2;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    iget v2, v1, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    int-to-float v2, v2

    .line 565
    iget v1, v1, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    div-float v3, v1, v3

    sub-float v4, v2, v3

    float-to-int v4, v4

    .line 566
    iput v4, v0, Landroid/graphics/Rect;->left:I

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 567
    iput v2, v0, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x0

    .line 568
    iput v2, v0, Landroid/graphics/Rect;->top:I

    float-to-int v1, v1

    .line 569
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 570
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 572
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->isSupportBlurEffect()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$2;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/view/MorphView;->access$400(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 573
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$2;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/view/MorphView;->access$400(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 575
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 580
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$2;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/view/MorphView;->access$600(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView$2;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    iget v1, v0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->access$500(Lcom/samsung/android/edgelighting/view/MorphView;)F

    move-result v0

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setX(F)V

    .line 582
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$2;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {p1}, Lcom/samsung/android/edgelighting/view/MorphView;->isEmptyTickerText()Z

    move-result p1

    if-nez p1, :cond_1

    .line 583
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$2;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {p1}, Lcom/samsung/android/edgelighting/view/MorphView;->access$700(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 584
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/MorphView$2;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    const-wide/16 v2, 0x1c2

    const-wide/16 v4, 0x12c

    iget v6, v1, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    iget v7, v1, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/edgelighting/view/MorphView;->changeNotificationWidth(JJII)V

    .line 585
    iget-object v8, p0, Lcom/samsung/android/edgelighting/view/MorphView$2;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    const/high16 v9, 0x3f800000    # 1.0f

    const-wide/16 v10, 0x226

    const-wide/16 v12, 0xc8

    invoke-static/range {v8 .. v13}, Lcom/samsung/android/edgelighting/view/MorphView;->access$800(Lcom/samsung/android/edgelighting/view/MorphView;FJJ)V

    .line 588
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView$2;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->access$300(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/LinearLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    return-void
.end method
