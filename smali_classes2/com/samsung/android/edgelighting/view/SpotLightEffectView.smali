.class public Lcom/samsung/android/edgelighting/view/SpotLightEffectView;
.super Landroid/view/View;
.source "SpotLightEffectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/edgelighting/view/SpotLightEffectView$ISpotLightAnimListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAnimListener:Lcom/samsung/android/edgelighting/view/SpotLightEffectView$ISpotLightAnimListener;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field mAnimtorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCurrWidth:I

.field private mIsCanceled:Z

.field private mSpotlightDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    const-class p1, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->TAG:Ljava/lang/String;

    .line 205
    new-instance p1, Lcom/samsung/android/edgelighting/view/SpotLightEffectView$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView$2;-><init>(Lcom/samsung/android/edgelighting/view/SpotLightEffectView;)V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mAnimtorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const-class p1, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->TAG:Ljava/lang/String;

    .line 205
    new-instance p1, Lcom/samsung/android/edgelighting/view/SpotLightEffectView$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView$2;-><init>(Lcom/samsung/android/edgelighting/view/SpotLightEffectView;)V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mAnimtorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/edgelighting/view/SpotLightEffectView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mSpotlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/android/edgelighting/view/SpotLightEffectView;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mIsCanceled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/edgelighting/view/SpotLightEffectView;)Lcom/samsung/android/edgelighting/view/SpotLightEffectView$ISpotLightAnimListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mAnimListener:Lcom/samsung/android/edgelighting/view/SpotLightEffectView$ISpotLightAnimListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/edgelighting/view/SpotLightEffectView;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->resetAnim()V

    return-void
.end method

.method private getAlphaAnim()Landroid/animation/Animator;
    .locals 6

    .line 107
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 110
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 111
    new-instance v2, Lcom/samsung/android/edgelighting/view/SpotLightEffectView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView$1;-><init>(Lcom/samsung/android/edgelighting/view/SpotLightEffectView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x64

    .line 117
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 118
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3eb851ec    # 0.36f

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getScaleAnim1()Landroid/animation/Animator;
    .locals 8

    .line 125
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 127
    fill-array-data v2, :array_0

    const-string/jumbo v3, "scaleX"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v1, [F

    .line 128
    fill-array-data v3, :array_1

    const-string/jumbo v4, "scaleY"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v3, 0x48f

    .line 130
    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 131
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3eb851ec    # 0.36f

    const v6, 0x3f2b851f    # 0.67f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    .line 132
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f2147ae    # 0.63f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f2147ae    # 0.63f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getScaleAnim2()Landroid/animation/Animator;
    .locals 8

    .line 137
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 139
    fill-array-data v2, :array_0

    const-string/jumbo v3, "scaleX"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v1, [F

    .line 140
    fill-array-data v3, :array_1

    const-string/jumbo v4, "scaleY"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v3, 0x48f

    .line 142
    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v3, 0x23c

    .line 143
    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 144
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e851eb8    # 0.26f

    const/4 v5, 0x0

    const v6, 0x3f266666    # 0.65f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    .line 145
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f6e147b    # 0.93f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f6e147b    # 0.93f
    .end array-data
.end method

.method private getScaleAnim3()Landroid/animation/Animator;
    .locals 8

    .line 150
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 152
    fill-array-data v2, :array_0

    const-string/jumbo v3, "scaleX"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v1, [F

    .line 153
    fill-array-data v3, :array_1

    const-string/jumbo v4, "scaleY"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v3, 0x6c5

    .line 155
    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v3, 0x247

    .line 156
    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 157
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea3d70a    # 0.32f

    const/4 v5, 0x0

    const v6, 0x3f28f5c3    # 0.66f

    const v7, 0x3f4a3d71    # 0.79f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    .line 158
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f6e147b    # 0.93f
        0x3f7ae148    # 0.98f
    .end array-data

    :array_1
    .array-data 4
        0x3f6e147b    # 0.93f
        0x3f7ae148    # 0.98f
    .end array-data
.end method

.method private getScaleAnim4()Landroid/animation/Animator;
    .locals 8

    .line 163
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 165
    fill-array-data v2, :array_0

    const-string/jumbo v3, "scaleX"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v1, [F

    .line 166
    fill-array-data v3, :array_1

    const-string/jumbo v4, "scaleY"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v3, 0x91d

    .line 168
    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v3, 0x23c

    .line 169
    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 170
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, -0x41b33333    # -0.2f

    const v6, 0x3f2b851f    # 0.67f

    const v7, 0x3f8b851f    # 1.09f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    .line 171
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f6e147b    # 0.93f
    .end array-data

    :array_1
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f6e147b    # 0.93f
    .end array-data
.end method

.method private getScaleAnim5()Landroid/animation/Animator;
    .locals 8

    .line 176
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 178
    fill-array-data v2, :array_0

    const-string/jumbo v3, "scaleX"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v1, [F

    .line 179
    fill-array-data v3, :array_1

    const-string/jumbo v4, "scaleY"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v3, 0xb54

    .line 181
    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v3, 0x25f

    .line 182
    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 183
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3eb33333    # 0.35f

    const v5, -0x43dc28f6    # -0.01f

    const v6, 0x3f2b851f    # 0.67f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    .line 184
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f6e147b    # 0.93f
        0x3f0a3d71    # 0.54f
    .end array-data

    :array_1
    .array-data 4
        0x3f6e147b    # 0.93f
        0x3f0a3d71    # 0.54f
    .end array-data
.end method

.method private initialize()V
    .locals 2

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$drawable;->edge_spotlight_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mSpotlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private resetAnim()V
    .locals 1

    const v0, 0x3f2147ae    # 0.63f

    .line 189
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 190
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private startEffect()V
    .locals 4

    .line 83
    iget v0, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mCurrWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mAnimtorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->getAlphaAnim()Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->getScaleAnim1()Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->getScaleAnim2()Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->getScaleAnim3()Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->getScaleAnim4()Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->getScaleAnim5()Landroid/animation/Animator;

    move-result-object p0

    const/4 v2, 0x5

    aput-object p0, v1, v2

    .line 87
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method


# virtual methods
.method public isAnimating()Z
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCurrentWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currWidth"
        }
    .end annotation

    .line 103
    iput p1, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mCurrWidth:I

    return-void
.end method

.method public setPaintColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mSpotlightDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 p1, 0x0

    .line 98
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mSpotlightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSpotlightAnimListener(Lcom/samsung/android/edgelighting/view/SpotLightEffectView$ISpotLightAnimListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animListener"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mAnimListener:Lcom/samsung/android/edgelighting/view/SpotLightEffectView$ISpotLightAnimListener;

    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 62
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->startEffect()V

    .line 64
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
