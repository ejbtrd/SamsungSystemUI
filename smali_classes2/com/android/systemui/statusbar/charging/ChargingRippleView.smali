.class public final Lcom/android/systemui/statusbar/charging/ChargingRippleView;
.super Landroid/view/View;
.source "ChargingRippleView.kt"


# instance fields
.field private final defaultColor:I

.field private duration:J

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
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/charging/RippleShader;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    const/4 p2, -0x1

    .line 37
    iput p2, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->defaultColor:I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->ripplePaint:Landroid/graphics/Paint;

    .line 46
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->origin:Landroid/graphics/PointF;

    const-wide/16 v1, 0x6d6

    .line 51
    iput-wide v1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->duration:J

    .line 54
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/charging/RippleShader;->setColor(I)V

    const/4 p2, 0x0

    .line 55
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/charging/RippleShader;->setProgress(F)V

    const p2, 0x3e99999a    # 0.3f

    .line 56
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/charging/RippleShader;->setSparkleStrength(F)V

    .line 57
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/16 p1, 0x8

    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic access$getRippleShader$p(Lcom/android/systemui/statusbar/charging/ChargingRippleView;)Lcom/android/systemui/statusbar/charging/RippleShader;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    return-object p0
.end method

.method public static synthetic startRipple$default(Lcom/android/systemui/statusbar/charging/ChargingRippleView;Ljava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 72
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->startRipple(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final getRippleInProgress()Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleInProgress:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/charging/RippleShader;->setPixelDensity(F)V

    .line 68
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/charging/RippleShader;->setPixelDensity(F)V

    .line 63
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    int-to-float v0, v0

    .line 106
    iget-object v1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/charging/RippleShader;->getProgress()F

    move-result v1

    sub-float v1, v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/charging/RippleShader;->getProgress()F

    move-result v2

    sub-float v2, v0, v2

    mul-float/2addr v1, v2

    .line 107
    iget-object v2, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/charging/RippleShader;->getProgress()F

    move-result v2

    sub-float v2, v0, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->radius:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    if-nez p1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->origin:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->ripplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public final setColor(I)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/charging/RippleShader;->setColor(I)V

    return-void
.end method

.method public final setDuration(J)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->duration:J

    return-void
.end method

.method public final setOrigin(Landroid/graphics/PointF;)V
    .locals 1
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/charging/RippleShader;->setOrigin(Landroid/graphics/PointF;)V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->origin:Landroid/graphics/PointF;

    return-void
.end method

.method public final setRadius(F)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/charging/RippleShader;->setRadius(F)V

    .line 44
    iput p1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->radius:F

    return-void
.end method

.method public final setRippleInProgress(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleInProgress:Z

    return-void
.end method

.method public final startRipple()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->startRipple$default(Lcom/android/systemui/statusbar/charging/ChargingRippleView;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public final startRipple(Ljava/lang/Runnable;)V
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 76
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 77
    iget-wide v1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->duration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 78
    new-instance v1, Lcom/android/systemui/statusbar/charging/ChargingRippleView$startRipple$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/charging/ChargingRippleView$startRipple$1;-><init>(Lcom/android/systemui/statusbar/charging/ChargingRippleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 86
    new-instance v1, Lcom/android/systemui/statusbar/charging/ChargingRippleView$startRipple$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/charging/ChargingRippleView$startRipple$2;-><init>(Lcom/android/systemui/statusbar/charging/ChargingRippleView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 93
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 p1, 0x0

    .line 94
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleInProgress:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
