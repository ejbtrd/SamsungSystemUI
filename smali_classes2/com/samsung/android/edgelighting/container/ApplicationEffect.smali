.class public Lcom/samsung/android/edgelighting/container/ApplicationEffect;
.super Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;
.source "ApplicationEffect.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_EDGE_COLOR:I

.field mContainerAnimator:Landroid/animation/ValueAnimator;

.field private mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/samsung/android/edgelighting/container/ApplicationEffect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->TAG:Ljava/lang/String;

    return-void
.end method

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

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;-><init>(Landroid/content/Context;)V

    const p1, -0xf0551d

    .line 117
    iput p1, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->DEFAULT_EDGE_COLOR:I

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->init()V

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

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, -0xf0551d

    .line 117
    iput p1, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->DEFAULT_EDGE_COLOR:I

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/edgelighting/container/ApplicationEffect;)Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;

    return-object p0
.end method

.method private containerAlphaAnimation(FF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " containerAlphaAnimation from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " containerAlphaAnimation  cancel"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 75
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    .line 77
    new-instance v0, Lcom/samsung/android/edgelighting/container/ApplicationEffect$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/container/ApplicationEffect$1;-><init>(Lcom/samsung/android/edgelighting/container/ApplicationEffect;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 84
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/samsung/android/edgelighting/container/ApplicationEffect$2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/edgelighting/container/ApplicationEffect$2;-><init>(Lcom/samsung/android/edgelighting/container/ApplicationEffect;F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 114
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->containerAlphaAnimation(FF)V

    return-void
.end method

.method public init()V
    .locals 2

    .line 58
    invoke-super {p0}, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->init()V

    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 61
    sget v1, Lcom/samsung/android/edgelighting/R$layout;->edge_application_container:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    sget v0, Lcom/samsung/android/edgelighting/R$id;->edge_lighting_effect:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;

    .line 64
    iget v1, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenWidth:I

    iget p0, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenHeight:I

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->setScreenSize(II)V

    return-void
.end method

.method public setEffectColors([I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectColors"
        }
    .end annotation

    .line 121
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->setEffectColors([I)V

    if-eqz p1, :cond_0

    .line 123
    array-length v0, p1

    if-lez v0, :cond_0

    const/high16 v0, -0x1000000

    const/4 v1, 0x0

    .line 124
    aget v1, p1, v1

    or-int/2addr v0, v1

    const/4 v1, 0x1

    .line 125
    aget v2, p1, v1

    if-eqz v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;

    aget p1, p1, v1

    invoke-virtual {v2, p1}, Lcom/samsung/android/edgelighting/view/AbsEdgeLightingMaskView;->setSubColor(I)V

    goto :goto_0

    :cond_0
    const v0, -0xf0551d

    .line 130
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->setMainColor(I)V

    .line 132
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->resetLightingAnimation()V

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 42
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->containerAlphaAnimation(FF)V

    .line 43
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/ApplicationEffect;->mLightEffectView:Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeLightAppEffectView;->show()V

    return-void
.end method
