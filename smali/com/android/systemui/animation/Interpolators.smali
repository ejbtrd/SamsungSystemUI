.class public Lcom/android/systemui/animation/Interpolators;
.super Ljava/lang/Object;
.source "Interpolators.java"


# static fields
.field public static final ACCELERATE:Landroid/view/animation/Interpolator;

.field public static final ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

.field public static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field public static final BOUNCE:Landroid/view/animation/Interpolator;

.field public static final CONTROL_STATE:Landroid/view/animation/Interpolator;

.field public static final CUSTOM_40_40:Landroid/view/animation/Interpolator;

.field public static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

.field public static final ICON_OVERSHOT:Landroid/view/animation/Interpolator;

.field public static final ICON_OVERSHOT_LESS:Landroid/view/animation/Interpolator;

.field public static final LINEAR:Landroid/view/animation/Interpolator;

.field public static final LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

.field public static final SLOW_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

.field public static final TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

.field public static final TOUCH_RESPONSE_REVERSE:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 39
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3f19999a    # 0.6f

    invoke-direct {v0, v5, v2, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    .line 41
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 42
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 43
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->SLOW_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 44
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 46
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 47
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    .line 48
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    .line 49
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40200000    # 2.5f

    invoke-direct {v0, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 50
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->CUSTOM_40_40:Landroid/view/animation/Interpolator;

    .line 51
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3fb33333    # 1.4f

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->ICON_OVERSHOT:Landroid/view/animation/Interpolator;

    .line 52
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3f8ccccd    # 1.1f

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->ICON_OVERSHOT_LESS:Landroid/view/animation/Interpolator;

    .line 54
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct {v0, v5, v2, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    .line 56
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->BOUNCE:Landroid/view/animation/Interpolator;

    .line 60
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->CONTROL_STATE:Landroid/view/animation/Interpolator;

    .line 66
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v5, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 73
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f666666    # 0.9f

    const v3, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->TOUCH_RESPONSE_REVERSE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static getNotificationScrimAlpha(FZ)F
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-static {p0, p1, v0, v0}, Lcom/android/systemui/animation/Interpolators;->getNotificationScrimAlpha(FZII)F

    move-result p0

    return p0
.end method

.method public static getNotificationScrimAlpha(FZII)F
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    const/16 p1, 0x9

    .line 120
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 p2, 0xa

    .line 121
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    const p3, 0x3f59999a    # 0.85f

    int-to-float v2, p1

    const v3, 0x3c03126f    # 0.008f

    mul-float/2addr v2, v3

    add-float/2addr v2, p3

    const p3, 0x3f733333    # 0.95f

    .line 123
    invoke-static {p3, v2}, Ljava/lang/Math;->min(FF)F

    move-result p3

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    int-to-float p1, p2

    const p2, 0x3ba3d70a    # 0.005f

    mul-float/2addr p1, p2

    const p2, 0x3d3851ec    # 0.045f

    .line 125
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float p2, v1, p3

    sub-float/2addr p2, p1

    cmpg-float v2, p0, p3

    if-gez v2, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    sub-float p1, v1, p1

    cmpl-float p1, p0, p1

    if-lez p1, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    sub-float/2addr p0, p3

    div-float/2addr p0, p2

    .line 132
    :goto_0
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3ed70a3d    # 0.42f

    const p3, 0x3f147ae1    # 0.58f

    invoke-direct {p1, p2, v0, p3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 133
    invoke-virtual {p1, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    return p0

    :cond_2
    if-eqz p1, :cond_3

    const p1, 0x3e99999a    # 0.3f

    .line 138
    invoke-static {v0, v1, p1, v1, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    goto :goto_1

    :cond_3
    const/high16 p1, 0x3f000000    # 0.5f

    .line 140
    invoke-static {v0, v1, v0, p1, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    :goto_1
    const p1, 0x3f99999a    # 1.2f

    mul-float/2addr p0, p1

    const p1, 0x3e4ccccd    # 0.2f

    sub-float/2addr p0, p1

    cmpg-float p1, p0, v0

    if-gtz p1, :cond_4

    return v0

    :cond_4
    sub-float/2addr v1, p0

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    const p2, 0x40490fd0

    mul-float/2addr p2, v1

    mul-float/2addr p2, v1

    float-to-double p2, p2

    .line 147
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double p2, v0, p2

    mul-double/2addr p2, p0

    sub-double/2addr v0, p2

    double-to-float p0, v0

    return p0
.end method

.method public static getOvershootInterpolation(F)F
    .locals 4

    const/high16 v0, -0x3f800000    # -4.0f

    mul-float/2addr p0, v0

    float-to-double v0, p0

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    double-to-float p0, v2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/util/MathUtils;->max(FF)F

    move-result p0

    return p0
.end method

.method public static getOvershootInterpolation(FFF)F
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, p1

    div-float p1, v1, p1

    .line 92
    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result p1

    div-float/2addr p1, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    neg-float p1, p1

    mul-float/2addr p1, p0

    float-to-double p0, p1

    .line 94
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    sub-double/2addr v2, p0

    double-to-float p0, v2

    mul-float/2addr p0, v1

    .line 93
    invoke-static {v0, p0}, Landroid/util/MathUtils;->max(FF)F

    move-result p0

    return p0

    .line 90
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid values for overshoot"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
