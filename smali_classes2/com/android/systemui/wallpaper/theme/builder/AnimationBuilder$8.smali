.class Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$8;
.super Ljava/lang/Object;
.source "AnimationBuilder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->buildSinXAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$8;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 342
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$8;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget-object v1, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget v0, v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$8;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget v4, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    iget v3, v3, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    sub-float/2addr v4, v3

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 344
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$8;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method
