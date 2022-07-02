.class Lcom/samsung/android/edgelighting/view/MorphView$8;
.super Ljava/lang/Object;
.source "MorphView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/MorphView;->changeNotificationWidth(JJII)V
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

    .line 802
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$8;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "valueAnimator"
        }
    .end annotation

    .line 806
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 808
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView$8;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->access$300(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 810
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 811
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/MorphView$8;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    iget v4, v3, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    div-float v5, p1, v1

    sub-float v6, v4, v5

    float-to-int v6, v6

    .line 812
    iput v6, v2, Landroid/graphics/Rect;->left:I

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 813
    iput v4, v2, Landroid/graphics/Rect;->right:I

    const/4 v4, 0x0

    .line 814
    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 815
    iget v3, v3, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 816
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 818
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->isSupportBlurEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView$8;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->access$400(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView$8;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->access$400(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView$8;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->access$900(Lcom/samsung/android/edgelighting/view/MorphView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView$8;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->access$600(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView$8;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    iget v3, v2, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float/2addr p1, v1

    add-float/2addr v3, p1

    invoke-static {v2}, Lcom/samsung/android/edgelighting/view/MorphView;->access$500(Lcom/samsung/android/edgelighting/view/MorphView;)F

    move-result p1

    sub-float/2addr v3, p1

    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView$8;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->access$600(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v3, p0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setX(F)V

    goto :goto_0

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView$8;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->access$600(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView$8;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    iget v2, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-float/2addr p1, v1

    sub-float/2addr v2, p1

    invoke-static {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->access$500(Lcom/samsung/android/edgelighting/view/MorphView;)F

    move-result p0

    add-float/2addr v2, p0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setX(F)V

    :goto_0
    return-void
.end method
