.class public Lcom/samsung/android/edgelighting/view/EchoEffectView;
.super Landroid/widget/RelativeLayout;
.source "EchoEffectView.java"


# instance fields
.field private final ALPHA:[F

.field private final ALPHA_IN_DURATION:[I

.field private final ALPHA_OUT_DELAY:[I

.field private final ANIM_INTERVAL:I

.field private final LINE_HEIGHT:[F

.field private final LINE_MARGIN_INTER:I

.field private final LINE_MARGIN_START:I

.field private final LINE_NUM:I

.field private final LINE_WIDTH_NORMAL:I

.field private final SCALE_Y_START:F

.field private final STANDARD_WIDTH:I

.field private final TAG:Ljava/lang/String;

.field private mAnimList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimListener:Lcom/samsung/android/edgelighting/view/SpotLightEffectView$ISpotLightAnimListener;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field mAnimtorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mIsCanceled:Z

.field private mLeftLine:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRightLine:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const-class p1, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    .line 30
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->LINE_NUM:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    const/4 v0, 0x4

    .line 40
    iput v0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->LINE_WIDTH_NORMAL:I

    new-array v0, p1, [F

    .line 42
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->LINE_HEIGHT:[F

    new-array v0, p1, [I

    .line 46
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->ALPHA_IN_DURATION:[I

    new-array v0, p1, [I

    .line 50
    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->ALPHA_OUT_DELAY:[I

    new-array p1, p1, [F

    .line 54
    fill-array-data p1, :array_3

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->ALPHA:[F

    const/16 p1, 0x578

    .line 58
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->ANIM_INTERVAL:I

    const/16 p1, 0x438

    .line 60
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->STANDARD_WIDTH:I

    const/4 p1, 0x1

    .line 62
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->LINE_MARGIN_START:I

    const/4 p1, 0x6

    .line 64
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->LINE_MARGIN_INTER:I

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->SCALE_Y_START:F

    .line 242
    new-instance p1, Lcom/samsung/android/edgelighting/view/EchoEffectView$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/edgelighting/view/EchoEffectView$1;-><init>(Lcom/samsung/android/edgelighting/view/EchoEffectView;)V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mAnimtorListener:Landroid/animation/AnimatorListenerAdapter;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f2b851f    # 0.67f
        0x3f051eb8    # 0.52f
    .end array-data

    :array_1
    .array-data 4
        0x190
        0x12c
        0x12c
    .end array-data

    :array_2
    .array-data 4
        0x320
        0x384
        0x384
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
    .end array-data
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

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const-class p1, Lcom/samsung/android/edgelighting/view/SpotLightEffectView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    .line 30
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->LINE_NUM:I

    .line 32
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    .line 34
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    const/4 p2, 0x4

    .line 40
    iput p2, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->LINE_WIDTH_NORMAL:I

    new-array p2, p1, [F

    .line 42
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->LINE_HEIGHT:[F

    new-array p2, p1, [I

    .line 46
    fill-array-data p2, :array_1

    iput-object p2, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->ALPHA_IN_DURATION:[I

    new-array p2, p1, [I

    .line 50
    fill-array-data p2, :array_2

    iput-object p2, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->ALPHA_OUT_DELAY:[I

    new-array p1, p1, [F

    .line 54
    fill-array-data p1, :array_3

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->ALPHA:[F

    const/16 p1, 0x578

    .line 58
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->ANIM_INTERVAL:I

    const/16 p1, 0x438

    .line 60
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->STANDARD_WIDTH:I

    const/4 p1, 0x1

    .line 62
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->LINE_MARGIN_START:I

    const/4 p1, 0x6

    .line 64
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->LINE_MARGIN_INTER:I

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->SCALE_Y_START:F

    .line 242
    new-instance p1, Lcom/samsung/android/edgelighting/view/EchoEffectView$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/edgelighting/view/EchoEffectView$1;-><init>(Lcom/samsung/android/edgelighting/view/EchoEffectView;)V

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mAnimtorListener:Landroid/animation/AnimatorListenerAdapter;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f2b851f    # 0.67f
        0x3f051eb8    # 0.52f
    .end array-data

    :array_1
    .array-data 4
        0x190
        0x12c
        0x12c
    .end array-data

    :array_2
    .array-data 4
        0x320
        0x384
        0x384
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/android/edgelighting/view/EchoEffectView;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->initilizeAnim()V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/edgelighting/view/EchoEffectView;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mIsCanceled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/edgelighting/view/EchoEffectView;)Lcom/samsung/android/edgelighting/view/SpotLightEffectView$ISpotLightAnimListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mAnimListener:Lcom/samsung/android/edgelighting/view/SpotLightEffectView$ISpotLightAnimListener;

    return-object p0
.end method

.method private getAlphaInAnim(Landroid/view/View;II)Landroid/animation/Animator;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "index",
            "phase"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 186
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->ALPHA:[F

    aget v1, v1, p2

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    mul-int/lit16 p3, p3, 0x578

    int-to-long v0, p3

    .line 187
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 188
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->ALPHA_IN_DURATION:[I

    aget p0, p0, p2

    int-to-long p2, p0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 189
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e2e147b    # 0.17f

    const p3, 0x3f547ae1    # 0.83f

    invoke-direct {p0, p2, p2, p3, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private getAlphaOutAnim(Landroid/view/View;II)Landroid/animation/Animator;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "index",
            "phase"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 194
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->ALPHA:[F

    aget v1, v1, p2

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    .line 195
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    mul-int/lit16 p3, p3, 0x578

    .line 196
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->ALPHA_OUT_DELAY:[I

    aget p0, p0, p2

    add-int/2addr p3, p0

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 197
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e2e147b    # 0.17f

    const p3, 0x3f547ae1    # 0.83f

    invoke-direct {p0, p2, p2, p3, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private getAnim(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "index"
        }
    .end annotation

    .line 176
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    mul-int/lit16 v1, p2, 0x12c

    int-to-long v1, v1

    .line 177
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    .line 179
    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->getAlphaInAnim(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v5

    aput-object v5, v4, v1

    .line 180
    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->getAlphaOutAnim(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->getScaleAnim(Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v5

    aput-object v5, v4, v3

    .line 179
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getScaleAnim(Landroid/view/View;II)Landroid/animation/Animator;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "index",
            "phase"
        }
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 202
    fill-array-data p0, :array_0

    const-string/jumbo p2, "scaleY"

    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    mul-int/lit16 p3, p3, 0x578

    int-to-long p1, p3

    .line 203
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 p1, 0x1f4

    .line 204
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 205
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e2e147b    # 0.17f

    const p3, 0x3f547ae1    # 0.83f

    invoke-direct {p1, p2, p2, p3, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initilizeAnim()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 224
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 225
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 226
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private makeGradientBg(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 134
    new-instance p0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 136
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0x1e

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    .line 138
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v5, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    const/4 v2, 0x2

    aput p1, v1, v2

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/high16 p1, 0x42b40000    # 90.0f

    .line 140
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object p0
.end method

.method private makeLeftLine(I)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 145
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v1, -0x100

    .line 146
    invoke-direct {p0, v1}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->makeGradientBg(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 147
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mScreenWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x44870000    # 1080.0f

    div-float/2addr v2, v3

    .line 148
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mScreenHeight:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->LINE_HEIGHT:[F

    aget v5, v5, p1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    iget v2, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mScreenWidth:I

    int-to-float v2, v2

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    mul-float/2addr v2, p1

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const/16 p1, 0xf

    .line 153
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 p1, 0x0

    .line 154
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 155
    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private makeRightLine(I)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 160
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 161
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/edgelighting/R$drawable;->echo_line_bg:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 162
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mScreenWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x44870000    # 1080.0f

    div-float/2addr v2, v3

    .line 163
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mScreenHeight:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->LINE_HEIGHT:[F

    aget v5, v5, p1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 165
    iget v2, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mScreenWidth:I

    int-to-float v2, v2

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    mul-float/2addr v2, p1

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    const/16 p1, 0x15

    .line 168
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0xf

    .line 169
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 p1, 0x0

    .line 170
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 171
    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private startEffect()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->getAnim(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->getAnim(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mAnimtorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mAnimList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->makeLeftLine(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->makeRightLine(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPaintColor(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mRightLine:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->makeGradientBg(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mLeftLine:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->makeGradientBg(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setScreenSize(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "screenWidth",
            "screenHeight"
        }
    .end annotation

    .line 217
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mScreenWidth:I

    .line 218
    iput p2, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mScreenHeight:I

    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EchoEffectView;->startEffect()V

    .line 97
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EchoEffectView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method
