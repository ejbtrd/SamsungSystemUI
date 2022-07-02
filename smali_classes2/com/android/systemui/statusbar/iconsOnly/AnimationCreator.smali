.class public Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;
.super Ljava/lang/Object;
.source "AnimationCreator.java"


# instance fields
.field mController:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

.field private final mSpringFloatProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CL2E_t6R-ZcOtnBo5wRiHAIZ9sA(Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;->lambda$createDetailDisappearingAnim$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$1;

    const-string/jumbo v1, "updateDetailedCardScale"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$1;-><init>(Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;->mSpringFloatProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;->mController:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    return-void
.end method

.method private synthetic lambda$createDetailDisappearingAnim$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;->mController:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->updateDetailedCardScale(F)V

    return-void
.end method


# virtual methods
.method public createDetailAppearingAnim()Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 3

    .line 35
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;->mController:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;->mSpringFloatProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    const/high16 p0, 0x3f000000    # 0.5f

    .line 36
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    const/high16 p0, 0x3b800000    # 0.00390625f

    .line 37
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 38
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    const v1, 0x3f47ae14    # 0.78f

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    const/high16 v1, 0x43e10000    # 450.0f

    .line 39
    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-object v0
.end method

.method public createDetailDisappearingAnim()Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;->mController:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->getDetailedCardScale()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x12c

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 91
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    const v3, 0x3f547ae1    # 0.83f

    invoke-direct {p0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public createIconAppearingAnimSet(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 7

    const v0, 0x3f99999a    # 1.2f

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v2

    const-string v5, "alpha"

    invoke-static {p1, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 72
    new-instance v5, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$2;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$2;-><init>(Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p0, v0, [F

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v5

    aput v5, p0, v3

    aput v4, p0, v2

    const-string/jumbo v5, "scaleX"

    invoke-static {p1, v5, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-array v5, v0, [F

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v6

    aput v6, v5, v3

    aput v4, v5, v2

    const-string/jumbo v4, "scaleY"

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 80
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v3

    aput-object p0, v5, v2

    aput-object p1, v5, v0

    .line 81
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p0, 0xc8

    .line 82
    invoke-virtual {v4, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 83
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v4
.end method

.method public createIconDisappearingAnimSet(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 7

    const/4 p0, 0x2

    new-array v0, p0, [F

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v1, v0, v3

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, p0, [F

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    aput v4, v1, v2

    const v4, 0x3f99999a    # 1.2f

    aput v4, v1, v3

    const-string/jumbo v5, "scaleX"

    invoke-static {p1, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v5, p0, [F

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v6

    aput v6, v5, v2

    aput v4, v5, v3

    const-string/jumbo v4, "scaleY"

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 61
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object p1, v5, p0

    .line 62
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p0, 0xc8

    .line 63
    invoke-virtual {v4, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 64
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v4
.end method

.method public createStackAppearingAnim(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 44
    fill-array-data p0, :array_0

    const-string v0, "alpha"

    invoke-static {p1, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x15e

    .line 45
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 46
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public createStackDisappearingAnim(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p0, v0

    const-string v0, "alpha"

    .line 51
    invoke-static {p1, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 52
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 53
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method
