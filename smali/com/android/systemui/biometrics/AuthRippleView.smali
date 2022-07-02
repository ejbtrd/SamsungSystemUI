.class public final Lcom/android/systemui/biometrics/AuthRippleView;
.super Landroid/view/View;
.source "AuthRippleView.kt"


# instance fields
.field private origin:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private radius:F

.field private rippleInProgress:Z

.field private final ripplePaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p1, Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/charging/RippleShader;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    .line 43
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->ripplePaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->origin:Landroid/graphics/PointF;

    const/4 v0, -0x1

    .line 56
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/charging/RippleShader;->setColor(I)V

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/charging/RippleShader;->setProgress(F)V

    const v0, 0x3ecccccd    # 0.4f

    .line 58
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/charging/RippleShader;->setSparkleStrength(F)V

    .line 59
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/16 p1, 0x8

    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic access$getRippleShader$p(Lcom/android/systemui/biometrics/AuthRippleView;)Lcom/android/systemui/statusbar/charging/RippleShader;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    return-object p0
.end method

.method public static final synthetic access$setRippleInProgress$p(Lcom/android/systemui/biometrics/AuthRippleView;Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleInProgress:Z

    return-void
.end method

.method private final setOrigin(Landroid/graphics/PointF;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/charging/RippleShader;->setOrigin(Landroid/graphics/PointF;)V

    .line 52
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->origin:Landroid/graphics/PointF;

    return-void
.end method

.method private final setRadius(F)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/charging/RippleShader;->setRadius(F)V

    .line 47
    iput p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->radius:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    int-to-float v0, v0

    .line 150
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/charging/RippleShader;->getProgress()F

    move-result v1

    sub-float v1, v0, v1

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/charging/RippleShader;->getProgress()F

    move-result v2

    sub-float v2, v0, v2

    mul-float/2addr v1, v2

    .line 151
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/charging/RippleShader;->getProgress()F

    move-result v2

    sub-float v2, v0, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->radius:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    if-nez p1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->origin:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->ripplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public final setColor(I)V
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/charging/RippleShader;->setColor(I)V

    return-void
.end method

.method public final setSensorLocation(Landroid/graphics/PointF;)V
    .locals 4
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthRippleView;->setOrigin(Landroid/graphics/PointF;)V

    .line 65
    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x3

    new-array v1, v1, [F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p1

    const/4 p1, 0x2

    aput v2, v1, p1

    invoke-static {v0, v1}, Lkotlin/comparisons/ComparisonsKt;->maxOf(F[F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthRippleView;->setRadius(F)V

    return-void
.end method

.method public final startRipple(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/LightRevealScrim;)V
    .locals 7
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/LightRevealScrim;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 74
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 75
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x5fd

    .line 76
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 77
    new-instance v2, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$rippleAnimator$1$1;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$rippleAnimator$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;Lcom/android/systemui/statusbar/LightRevealScrim;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    .line 87
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 88
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xa

    .line 89
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 90
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 91
    new-instance v3, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$revealAnimator$1$1;

    invoke-direct {v3, p2}, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$revealAnimator$1$1;-><init>(Lcom/android/systemui/statusbar/LightRevealScrim;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p2, v0, [I

    .line 96
    fill-array-data p2, :array_2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v3, 0xa7

    .line 97
    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 98
    new-instance v3, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$alphaInAnimator$1$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$alphaInAnimator$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {p2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v0, [I

    .line 107
    fill-array-data v3, :array_3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1a1

    .line 108
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v4, 0x45c

    .line 109
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 110
    new-instance v4, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$alphaOutAnimator$1$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$alphaOutAnimator$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 119
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    aput-object p2, v5, v0

    const/4 p2, 0x3

    aput-object v3, v5, p2

    .line 120
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 126
    new-instance p2, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$animatorSet$1$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/biometrics/AuthRippleView$startRipple$animatorSet$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;Ljava/lang/Runnable;)V

    invoke-virtual {v4, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 139
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x7f
    .end array-data

    :array_3
    .array-data 4
        0x7f
        0x0
    .end array-data
.end method
