.class Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;
.super Ljava/lang/Object;
.source "KeyguardMotionWallpaper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->startAlphaAnimator(FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

.field final synthetic val$curAngularSum:F


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;F)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->val$curAngularSum:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 804
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->val$curAngularSum:F

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1300(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)F

    move-result v0

    cmpg-float p1, p1, v0

    const v0, 0x3d4ccccd    # 0.05f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez p1, :cond_1

    .line 805
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1400(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1400(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->val$curAngularSum:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    invoke-static {p1, v3}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1402(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;F)F

    .line 806
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1400(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->val$curAngularSum:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 808
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1400(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->val$curAngularSum:F

    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1400(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    invoke-static {p1, v3}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1402(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;F)F

    .line 809
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1400(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->val$curAngularSum:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    .line 812
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1500(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1400(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x38d1b717    # 1.0E-4f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    if-eqz v1, :cond_3

    .line 816
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_2

    .line 817
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$300(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1500(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1400(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->setAlpha(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 819
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 820
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1400(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->access$1502(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;F)F

    :cond_3
    return-void
.end method
