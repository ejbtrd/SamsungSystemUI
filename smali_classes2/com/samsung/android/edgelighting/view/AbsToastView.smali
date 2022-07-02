.class public abstract Lcom/samsung/android/edgelighting/view/AbsToastView;
.super Landroid/widget/FrameLayout;
.source "AbsToastView.java"


# instance fields
.field protected isAnimating:Ljava/lang/Boolean;

.field protected mHeight:I

.field protected mIsHiding:Z

.field protected mMaxWidth:I

.field protected mMinWidth:I

.field protected mTextMaxWidth:I

.field protected mToastFullColor:Z

.field protected mTranslationXAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mWidth:I


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

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    const/16 p1, 0x5f

    .line 18
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    const/16 p1, 0x2da

    .line 20
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mToastFullColor:Z

    .line 29
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mIsHiding:Z

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

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    const/16 p1, 0x5f

    .line 18
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    const/16 p1, 0x2da

    .line 20
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mToastFullColor:Z

    .line 29
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mIsHiding:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    const/16 p1, 0x5f

    .line 18
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    const/16 p1, 0x2da

    .line 20
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mToastFullColor:Z

    .line 29
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mIsHiding:Z

    return-void
.end method


# virtual methods
.method public getMaxWidth()I
    .locals 0

    .line 83
    iget p0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    return p0
.end method

.method public getMinWidth()I
    .locals 0

    .line 88
    iget p0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    return p0
.end method

.method protected initialize()V
    .locals 0

    return-void
.end method

.method public setMinMax(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "min",
            "max"
        }
    .end annotation

    .line 93
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    .line 94
    iput p2, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    return-void
.end method

.method public setScreenSize(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 64
    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mWidth:I

    .line 66
    iput p2, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mHeight:I

    .line 68
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/edgelighting/R$dimen;->ticker_text_full_max_ratio:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 71
    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    .line 73
    iget p2, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mWidth:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/edgelighting/R$dimen;->morph_initial_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 74
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_start_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p2, v0

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_end_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTextMaxWidth:I

    return-void
.end method

.method protected updateRefreshUI(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "w",
            "h"
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/AbsToastView;->setScreenSize(II)V

    return-void
.end method
