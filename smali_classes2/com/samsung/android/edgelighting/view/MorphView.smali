.class public Lcom/samsung/android/edgelighting/view/MorphView;
.super Lcom/samsung/android/edgelighting/view/AbsToastView;
.source "MorphView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ICON_SCALE_ORIGINAL:F

.field private final ICON_SCALE_UP:F

.field private mCodeText:Landroid/widget/TextView;

.field private mExpandButton:Landroid/widget/ImageView;

.field private mFakeShadow:Landroid/view/View;

.field private mIconSideMargin:F

.field private mIsGrayScaled:Z

.field private mIsRTL:Z

.field private mMainText:Landroid/widget/TextView;

.field private mNotiIcon:Landroid/widget/ImageView;

.field private mNotiRoot:Landroid/widget/LinearLayout;

.field private mPm:Landroid/os/PowerManager;

.field private mPopupListener:Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;

.field private mShouldShowButton:Z

.field private mSubText:Landroid/widget/TextView;

.field mTextAnimator:Landroid/animation/ValueAnimator;

.field private mTextRoot:Landroid/widget/RelativeLayout;

.field private mToastRootLayout:Landroid/widget/LinearLayout;

.field private mTouchRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$SduOEWliLfbIkzNqqJ7jazTppOA(Lcom/samsung/android/edgelighting/view/MorphView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->lambda$updateRefreshUI$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/view/MorphView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/AbsToastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 59
    iput p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->ICON_SCALE_ORIGINAL:F

    const p2, 0x3fb1eb85    # 1.39f

    .line 60
    iput p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->ICON_SCALE_UP:F

    const-string p2, "layout_inflater"

    .line 100
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->getLayoutId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 104
    sget p2, Lcom/samsung/android/edgelighting/R$id;->toast_root:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    .line 105
    sget p2, Lcom/samsung/android/edgelighting/R$id;->toast_app_icon:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiIcon:Landroid/widget/ImageView;

    .line 106
    sget p2, Lcom/samsung/android/edgelighting/R$id;->toast_title_text:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    .line 107
    sget p2, Lcom/samsung/android/edgelighting/R$id;->toast_sub_text:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    .line 108
    sget p2, Lcom/samsung/android/edgelighting/R$id;->toast_text_layout:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextRoot:Landroid/widget/RelativeLayout;

    .line 109
    sget p2, Lcom/samsung/android/edgelighting/R$id;->notiIcon_root:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiRoot:Landroid/widget/LinearLayout;

    .line 111
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mPm:Landroid/os/PowerManager;

    .line 113
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->isSupportBlurEffect()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 114
    sget p2, Lcom/samsung/android/edgelighting/R$id;->fake_shadow_view:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mFakeShadow:Landroid/view/View;

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$drawable;->fake_shadow_morph_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_0
    sget p2, Lcom/samsung/android/edgelighting/R$id;->expand_button:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mExpandButton:Landroid/widget/ImageView;

    .line 121
    sget p2, Lcom/samsung/android/edgelighting/R$id;->verification_code:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mCodeText:Landroid/widget/TextView;

    .line 122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/edgelighting/R$dimen;->toast_side_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mIconSideMargin:F

    .line 124
    iget-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mCodeText:Landroid/widget/TextView;

    new-instance v0, Lcom/samsung/android/edgelighting/view/MorphView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/view/MorphView$1;-><init>(Lcom/samsung/android/edgelighting/view/MorphView;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/edgelighting/utils/Utils;->isRTLMode(Landroid/content/res/Configuration;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mIsRTL:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/samsung/android/edgelighting/view/MorphView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mCodeText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/edgelighting/view/MorphView;)Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mPopupListener:Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/view/View;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mFakeShadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/edgelighting/view/MorphView;)F
    .locals 0

    .line 55
    iget p0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mIconSideMargin:F

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiRoot:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/edgelighting/view/MorphView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextRoot:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/edgelighting/view/MorphView;FJJ)V
    .locals 0

    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/edgelighting/view/MorphView;->changeNotiText(FJJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/edgelighting/view/MorphView;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mIsRTL:Z

    return p0
.end method

.method private adjustTouchRegion(Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 486
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 487
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->toast_top_margin:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 488
    iget v1, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 489
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private changeNotiText(FJJ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "value",
            "startDelay",
            "duration"
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextRoot:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextRoot:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    new-array v2, v2, [F

    aput p1, v2, v1

    const-string v1, "alpha"

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextAnimator:Landroid/animation/ValueAnimator;

    .line 612
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 614
    iget-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/samsung/android/edgelighting/view/MorphView$3;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/edgelighting/view/MorphView$3;-><init>(Lcom/samsung/android/edgelighting/view/MorphView;F)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 640
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 641
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 642
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private isAnimating()Z
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationXAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 1023
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_3

    .line 1024
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateRefreshUI$0()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 927
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/edgelighting/view/MorphView;->show(J)V

    return-void
.end method

.method private updateMargin(Landroid/view/WindowInsets;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 451
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->toast_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    if-eqz p1, :cond_3

    .line 453
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 455
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p1

    .line 457
    sget-object v1, Lcom/samsung/android/edgelighting/view/MorphView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMargin  safe Inset top :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 462
    :goto_0
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 463
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 464
    iget v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 466
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 467
    iget v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 470
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 471
    iget v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 474
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 475
    iget v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 477
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mWidth:I

    iget v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 478
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 480
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/MorphView;->adjustTouchRegion(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateMaxMinWidth([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tickerText"
        }
    .end annotation

    const/4 v0, 0x0

    .line 251
    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 252
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    iget p0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTextMaxWidth:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    return-void
.end method

.method private updateTextColor(I)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightingColor"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 291
    invoke-static {v1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/samsung/android/edgelighting/R$color;->toast_default_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    const/4 v4, 0x1

    .line 294
    aget v5, v2, v4

    float-to-double v5, v5

    const-wide v7, 0x3fc999999999999aL    # 0.2

    cmpg-double v5, v5, v7

    const-wide v9, 0x3fee666666666666L    # 0.95

    const/4 v6, 0x2

    if-gtz v5, :cond_0

    aget v5, v2, v6

    float-to-double v11, v5

    cmpl-double v5, v11, v9

    if-ltz v5, :cond_0

    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$color;->lighting_color_top_bound:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto/16 :goto_1

    .line 296
    :cond_0
    aget v5, v2, v6

    float-to-double v11, v5

    const-wide v13, 0x3fa999999999999aL    # 0.05

    cmpg-double v5, v11, v13

    if-gtz v5, :cond_1

    .line 297
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$color;->lighting_color_low_bound:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto/16 :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 299
    aget v11, v2, v5

    const/high16 v12, 0x41f00000    # 30.0f

    cmpg-float v11, v11, v12

    const-wide v15, 0x3fe6666666666666L    # 0.7

    const-wide v17, 0x3fdccccccccccccdL    # 0.45

    const-wide v19, 0x3feb333333333333L    # 0.85

    if-lez v11, :cond_e

    aget v11, v2, v5

    const/high16 v21, 0x433e0000    # 190.0f

    cmpl-float v11, v11, v21

    if-ltz v11, :cond_2

    aget v11, v2, v5

    const/high16 v22, 0x43b40000    # 360.0f

    cmpg-float v11, v11, v22

    if-gtz v11, :cond_2

    goto/16 :goto_0

    .line 307
    :cond_2
    aget v11, v2, v5

    const/high16 v13, 0x42480000    # 50.0f

    cmpl-float v11, v11, v13

    const/high16 v14, 0x43110000    # 145.0f

    if-ltz v11, :cond_7

    aget v11, v2, v5

    cmpg-float v11, v11, v14

    if-gtz v11, :cond_7

    .line 308
    aget v3, v2, v4

    float-to-double v11, v3

    cmpl-double v3, v11, v7

    if-ltz v3, :cond_3

    aget v3, v2, v6

    float-to-double v11, v3

    cmpl-double v3, v11, v9

    if-gez v3, :cond_5

    :cond_3
    aget v3, v2, v6

    float-to-double v11, v3

    cmpl-double v3, v11, v19

    if-ltz v3, :cond_4

    aget v3, v2, v6

    float-to-double v11, v3

    cmpg-double v3, v11, v9

    if-lez v3, :cond_5

    :cond_4
    aget v3, v2, v4

    float-to-double v3, v3

    cmpg-double v3, v3, v7

    if-gtz v3, :cond_6

    aget v3, v2, v6

    float-to-double v3, v3

    cmpl-double v3, v3, v15

    if-ltz v3, :cond_6

    aget v2, v2, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v19

    if-gtz v2, :cond_6

    .line 311
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$color;->lighting_color_high_bound:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto/16 :goto_1

    .line 313
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$color;->lighting_color_mid_bound:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto/16 :goto_1

    .line 315
    :cond_7
    aget v11, v2, v5

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_8

    aget v11, v2, v5

    cmpg-float v11, v11, v13

    if-lez v11, :cond_9

    :cond_8
    aget v11, v2, v5

    cmpl-float v11, v11, v14

    if-ltz v11, :cond_13

    aget v5, v2, v5

    cmpg-float v5, v5, v21

    if-gtz v5, :cond_13

    .line 316
    :cond_9
    aget v3, v2, v4

    float-to-double v11, v3

    cmpl-double v3, v11, v7

    if-ltz v3, :cond_a

    aget v3, v2, v6

    float-to-double v7, v3

    cmpl-double v3, v7, v9

    if-gez v3, :cond_c

    :cond_a
    aget v3, v2, v4

    float-to-double v7, v3

    cmpg-double v3, v7, v17

    if-gtz v3, :cond_b

    aget v3, v2, v6

    float-to-double v7, v3

    cmpl-double v3, v7, v19

    if-ltz v3, :cond_b

    aget v3, v2, v6

    float-to-double v7, v3

    cmpg-double v3, v7, v9

    if-lez v3, :cond_c

    :cond_b
    aget v3, v2, v4

    float-to-double v3, v3

    const-wide v7, 0x3fc3333333333333L    # 0.15

    cmpg-double v3, v3, v7

    if-gtz v3, :cond_d

    aget v3, v2, v6

    float-to-double v3, v3

    cmpl-double v3, v3, v15

    if-ltz v3, :cond_d

    aget v2, v2, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v19

    if-gtz v2, :cond_d

    .line 319
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$color;->lighting_color_high_bound:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_1

    .line 321
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$color;->lighting_color_mid_bound:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_1

    .line 300
    :cond_e
    :goto_0
    aget v3, v2, v4

    float-to-double v11, v3

    cmpl-double v3, v11, v7

    if-ltz v3, :cond_f

    aget v3, v2, v4

    float-to-double v7, v3

    cmpg-double v3, v7, v17

    if-gtz v3, :cond_f

    aget v3, v2, v6

    float-to-double v7, v3

    cmpl-double v3, v7, v9

    if-gez v3, :cond_11

    :cond_f
    aget v3, v2, v4

    float-to-double v7, v3

    cmpg-double v3, v7, v17

    if-gtz v3, :cond_10

    aget v3, v2, v6

    float-to-double v7, v3

    cmpl-double v3, v7, v19

    if-ltz v3, :cond_10

    aget v3, v2, v6

    float-to-double v7, v3

    cmpg-double v3, v7, v9

    if-lez v3, :cond_11

    :cond_10
    aget v3, v2, v4

    float-to-double v3, v3

    cmpg-double v3, v3, v13

    if-gtz v3, :cond_12

    aget v3, v2, v6

    float-to-double v3, v3

    cmpl-double v3, v3, v15

    if-ltz v3, :cond_12

    aget v2, v2, v6

    float-to-double v2, v2

    cmpg-double v2, v2, v19

    if-gtz v2, :cond_12

    .line 303
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$color;->lighting_color_high_bound:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_1

    .line 305
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$color;->lighting_color_mid_bound:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 326
    :cond_13
    :goto_1
    iget-boolean v2, v0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mToastFullColor:Z

    if-eqz v2, :cond_14

    .line 327
    iget-object v2, v0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    iget-object v2, v0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    :cond_14
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/edgelighting/view/MorphView;->setIconColor(II)V

    return-void
.end method


# virtual methods
.method public addPopupListener(Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 983
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mPopupListener:Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;

    return-void
.end method

.method public changeNotificationWidth(JJII)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x10
        }
        names = {
            "startDelay",
            "duration",
            "fromWidth",
            "toWidth"
        }
    .end annotation

    .line 765
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationXAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p5, p6, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x2

    new-array v4, v3, [F

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3fb1eb85    # 1.39f

    if-eqz v2, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    aput v7, v4, v1

    if-eqz v2, :cond_2

    move v5, v6

    :cond_2
    aput v5, v4, v0

    .line 767
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 768
    invoke-virtual {v4, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 769
    new-instance v5, Lcom/samsung/android/edgelighting/utils/OneSpring;

    invoke-direct {v5}, Lcom/samsung/android/edgelighting/utils/OneSpring;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-nez v2, :cond_3

    .line 771
    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 772
    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 774
    :cond_3
    new-instance v5, Lcom/samsung/android/edgelighting/view/MorphView$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/edgelighting/view/MorphView$6;-><init>(Lcom/samsung/android/edgelighting/view/MorphView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 783
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/edgelighting/R$dimen;->lighting_popup_round:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 784
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/edgelighting/R$dimen;->lighting_popup_round_scaled:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    new-array v7, v3, [F

    if-eqz v2, :cond_4

    move v8, v5

    goto :goto_2

    :cond_4
    move v8, v6

    :goto_2
    aput v8, v7, v1

    if-eqz v2, :cond_5

    move v5, v6

    :cond_5
    aput v5, v7, v0

    .line 785
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 786
    invoke-virtual {v5, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 787
    new-instance v6, Lcom/samsung/android/edgelighting/utils/OneSpring;

    invoke-direct {v6}, Lcom/samsung/android/edgelighting/utils/OneSpring;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 788
    new-instance v6, Lcom/samsung/android/edgelighting/view/MorphView$7;

    invoke-direct {v6, p0}, Lcom/samsung/android/edgelighting/view/MorphView$7;-><init>(Lcom/samsung/android/edgelighting/view/MorphView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, v3, [F

    int-to-float p5, p5

    aput p5, v5, v1

    int-to-float p5, p6

    aput p5, v5, v0

    .line 799
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p5

    .line 800
    invoke-virtual {p5, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 801
    new-instance p6, Lcom/samsung/android/edgelighting/utils/OneSpring;

    invoke-direct {p6}, Lcom/samsung/android/edgelighting/utils/OneSpring;-><init>()V

    invoke-virtual {p5, p6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 802
    new-instance p6, Lcom/samsung/android/edgelighting/view/MorphView$8;

    invoke-direct {p6, p0}, Lcom/samsung/android/edgelighting/view/MorphView$8;-><init>(Lcom/samsung/android/edgelighting/view/MorphView;)V

    invoke-virtual {p5, p6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 834
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    sget v5, Lcom/samsung/android/edgelighting/R$dimen;->toast_root_elevation:I

    invoke-virtual {p6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    int-to-float p6, p6

    new-array v5, v3, [F

    const/4 v6, 0x0

    if-eqz v2, :cond_6

    move v7, p6

    goto :goto_3

    :cond_6
    move v7, v6

    :goto_3
    aput v7, v5, v1

    if-eqz v2, :cond_7

    move p6, v6

    :cond_7
    aput p6, v5, v0

    .line 835
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p6

    .line 836
    invoke-virtual {p6, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 837
    new-instance p3, Lcom/samsung/android/edgelighting/utils/OneSpring;

    invoke-direct {p3}, Lcom/samsung/android/edgelighting/utils/OneSpring;-><init>()V

    invoke-virtual {p6, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 838
    new-instance p3, Lcom/samsung/android/edgelighting/view/MorphView$9;

    invoke-direct {p3, p0}, Lcom/samsung/android/edgelighting/view/MorphView$9;-><init>(Lcom/samsung/android/edgelighting/view/MorphView;)V

    invoke-virtual {p6, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 848
    iget-object p3, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationXAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p4, Lcom/samsung/android/edgelighting/view/MorphView$10;

    invoke-direct {p4, p0, v2}, Lcom/samsung/android/edgelighting/view/MorphView$10;-><init>(Lcom/samsung/android/edgelighting/view/MorphView;Z)V

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 877
    iget-object p3, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationXAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p4, 0x3

    new-array p4, p4, [Landroid/animation/Animator;

    aput-object p5, p4, v1

    aput-object v4, p4, v0

    aput-object p6, p4, v3

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 878
    iget-object p3, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationXAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p3, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 879
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationXAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public changeToastStyle(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 900
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 902
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    .line 904
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x0

    .line 906
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v1, 0x4

    const/high16 v2, -0x1000000

    or-int/2addr p1, v2

    .line 908
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 912
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/edgelighting/R$color;->black_toast_text_color:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 914
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 915
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 916
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public deleteNotification(F)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toEndX"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const-string/jumbo p1, "translationX"

    .line 935
    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v1, v0, [F

    const/high16 v3, 0x3f000000    # 0.5f

    aput v3, v1, v2

    const-string v3, "alpha"

    .line 936
    invoke-static {p0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 938
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 940
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e2e147b    # 0.17f

    const v6, 0x3f2b851f    # 0.67f

    const v7, 0x3f051eb8    # 0.52f

    const v8, 0x3fbc28f6    # 1.47f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x258

    .line 941
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object p1, v4, v2

    aput-object v1, v4, v0

    .line 942
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 943
    new-instance p1, Lcom/samsung/android/edgelighting/view/MorphView$11;

    invoke-direct {p1, p0}, Lcom/samsung/android/edgelighting/view/MorphView$11;-><init>(Lcom/samsung/android/edgelighting/view/MorphView;)V

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 965
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public disappear(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delay"
        }
    .end annotation

    .line 646
    iget-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mIsHiding:Z

    if-eqz p1, :cond_0

    .line 647
    sget-object p0, Lcom/samsung/android/edgelighting/view/MorphView;->TAG:Ljava/lang/String;

    const-string p1, "Morph animation is running. So ignore hide action."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 651
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mIsHiding:Z

    new-array p1, p1, [F

    const/4 p2, 0x0

    const/4 v0, 0x0

    aput v0, p1, p2

    const-string p2, "alpha"

    .line 653
    invoke-static {p0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 654
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    .line 655
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 657
    new-instance p2, Lcom/samsung/android/edgelighting/view/MorphView$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/edgelighting/view/MorphView$4;-><init>(Lcom/samsung/android/edgelighting/view/MorphView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 679
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method protected getLayoutId()I
    .locals 0

    .line 151
    sget p0, Lcom/samsung/android/edgelighting/R$layout;->morph_view:I

    return p0
.end method

.method public getRootRect()Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 972
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 973
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 974
    aget v0, v0, v2

    .line 975
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    .line 976
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    .line 979
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr v2, v1

    add-int/2addr p0, v0

    invoke-direct {v3, v1, v0, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method public getTouchRect()Landroid/graphics/Rect;
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public hide(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startDelay"
        }
    .end annotation

    .line 684
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mIsHiding:Z

    if-eqz v0, :cond_0

    .line 685
    sget-object p0, Lcom/samsung/android/edgelighting/view/MorphView;->TAG:Ljava/lang/String;

    const-string p1, "Morph animation is running. So ignore hide action."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 689
    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mIsHiding:Z

    .line 690
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->isEmptyTickerText()Z

    move-result v1

    if-nez v1, :cond_2

    .line 691
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mPopupListener:Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;

    if-eqz v1, :cond_1

    .line 692
    invoke-interface {v1}, Lcom/samsung/android/edgelighting/interfaces/OnPopupAnimationListener;->onDismissPopup()V

    :cond_1
    const/4 v3, 0x0

    const-wide/16 v6, 0xc8

    move-object v2, p0

    move-wide v4, p1

    .line 694
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/edgelighting/view/MorphView;->changeNotiText(FJJ)V

    const-wide/16 v1, 0x64

    add-long v4, p1, v1

    const-wide/16 v6, 0x12c

    .line 695
    iget v8, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    iget v9, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/edgelighting/view/MorphView;->changeNotificationWidth(JJII)V

    :cond_2
    new-array v1, v0, [F

    const/high16 v2, -0x3c510000    # -350.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string/jumbo v2, "translationY"

    .line 697
    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 698
    new-instance v2, Lcom/samsung/android/edgelighting/utils/SineIn60;

    invoke-direct {v2}, Lcom/samsung/android/edgelighting/utils/SineIn60;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x15e

    .line 699
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v2, v0, [F

    const/4 v4, 0x0

    aput v4, v2, v3

    const-string v4, "alpha"

    .line 700
    invoke-static {p0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 701
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xc8

    .line 702
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 704
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0x190

    add-long/2addr p1, v5

    .line 705
    invoke-virtual {v4, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 706
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v1, p2, v3

    aput-object v2, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 707
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/samsung/android/edgelighting/view/MorphView$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/edgelighting/view/MorphView$5;-><init>(Lcom/samsung/android/edgelighting/view/MorphView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 730
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public initialize()V
    .locals 7

    .line 375
    invoke-super {p0}, Lcom/samsung/android/edgelighting/view/AbsToastView;->initialize()V

    .line 376
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->toast_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 379
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 381
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 383
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 386
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 387
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 388
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 391
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->getVerifyCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 392
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 393
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 396
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 397
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v3, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 398
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 402
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_4

    move v3, v5

    .line 405
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 409
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    if-lez v2, :cond_8

    .line 413
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    add-int/2addr v2, v0

    .line 414
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/samsung/android/edgelighting/R$dimen;->noti_icon_end_margin:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 415
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_start_margin:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 416
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_end_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1

    .line 418
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_start_margin:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 419
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/edgelighting/R$dimen;->noti_text_end_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    goto :goto_2

    :cond_8
    move v2, v0

    .line 425
    :goto_2
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 426
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/samsung/android/edgelighting/R$dimen;->ticker_text_full_max_ratio:I

    invoke-virtual {v4, v6, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 427
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    .line 428
    iget v4, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 429
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/edgelighting/view/AbsToastView;->setMinMax(II)V

    .line 430
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/edgelighting/view/MorphView;->updateMargin(Landroid/view/WindowInsets;)V

    .line 431
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/edgelighting/view/MorphView;->setWidthHeight(II)V

    .line 433
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->reset()V

    return-void
.end method

.method public isEmptyTickerText()Z
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    .line 887
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 438
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/MorphView;->updateMargin(Landroid/view/WindowInsets;)V

    .line 440
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result p0

    .line 441
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    .line 442
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    .line 443
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    .line 439
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 999
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1001
    invoke-static {p1}, Lcom/samsung/android/edgelighting/utils/Utils;->isRTLMode(Landroid/content/res/Configuration;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mIsRTL:Z

    return-void
.end method

.method public removeTouchRegion()V
    .locals 1

    .line 497
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public reset()V
    .locals 2

    const/high16 v0, -0x3c860000    # -250.0f

    .line 514
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 515
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextRoot:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 516
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 518
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 520
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 525
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationXAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationXAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 530
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationXAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 532
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    return-void
.end method

.method public setExpandButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 159
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mExpandButton:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 160
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setFillToastColor(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFull"
        }
    .end annotation

    .line 264
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mToastFullColor:Z

    return-void
.end method

.method public setIconColor(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bgColor",
            "color"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 338
    iget-boolean v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mIsGrayScaled:Z

    if-eqz v2, :cond_2

    .line 339
    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_0

    .line 340
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 341
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v2, 0x0

    .line 342
    invoke-virtual {v1, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    if-eqz v0, :cond_3

    if-nez p2, :cond_1

    const p2, -0xb38f5d

    .line 350
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 351
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 355
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiRoot:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 358
    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/view/MorphView;->updateBlurState(Z)V

    return-void
.end method

.method public setIsGrayScaled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isGrayScaled"
        }
    .end annotation

    .line 994
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mIsGrayScaled:Z

    return-void
.end method

.method public setNotiIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appIcon"
        }
    .end annotation

    .line 155
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNotiText([Ljava/lang/String;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tickerText",
            "isScreeOn"
        }
    .end annotation

    const/4 v0, 0x0

    .line 193
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x1

    .line 197
    aget-object v2, p1, v1

    const/16 v3, 0x8

    const-string v4, "..."

    const/16 v5, 0xf

    if-eqz v2, :cond_3

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p2, :cond_2

    .line 198
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    aget-object v2, p1, v1

    invoke-static {p2, v2}, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->isVerificationCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 199
    sget-object p2, Lcom/samsung/android/edgelighting/view/MorphView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verification code start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->getCodeStrartIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->getCodeEndIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " code length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->getVerifyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->getCodeEndIndex()I

    move-result p2

    invoke-static {}, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->getVerifyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr p2, v2

    if-le p2, v5, :cond_1

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    add-int/lit8 v4, p2, -0xf

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    goto :goto_0

    .line 205
    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {v2, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    .line 207
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    new-instance p2, Landroid/text/SpannableString;

    invoke-static {}, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->getVerifyCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 209
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {p2, v2, v0, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 210
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move p2, v1

    goto :goto_1

    .line 213
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move p2, v0

    .line 215
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mSubText:Landroid/widget/TextView;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, p2

    goto/16 :goto_3

    :cond_3
    if-eqz p2, :cond_5

    .line 221
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    aget-object v2, p1, v0

    invoke-static {p2, v2}, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->isVerificationCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 222
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->getCodeStrartIndex()I

    move-result p2

    if-le p2, v5, :cond_4

    .line 223
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-static {}, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->getCodeStrartIndex()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-static {}, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->getCodeStrartIndex()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    goto :goto_2

    .line 225
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-static {}, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->getCodeStrartIndex()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    .line 227
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mMainText:Landroid/widget/TextView;

    aget-object v2, p1, v0

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    new-instance p2, Landroid/text/SpannableString;

    invoke-static {}, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->getVerifyCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 231
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {p2, v2, v0, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_3

    .line 235
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    :goto_3
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/MorphView;->updateMaxMinWidth([Ljava/lang/String;)V

    return v0
.end method

.method public setToastColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 269
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->isSupportBlurEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 274
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    .line 276
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 278
    iget-boolean v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mToastFullColor:Z

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v1, 0x0

    .line 280
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 285
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/MorphView;->updateTextColor(I)V

    return-void
.end method

.method public setWidthHeight(II)V
    .locals 5
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

    .line 735
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->toast_elevation_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 736
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 737
    iget v2, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 738
    iget v2, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 739
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 741
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 742
    iget v2, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 743
    iget v2, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMinWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 744
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->isSupportBlurEffect()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mFakeShadow:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 747
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/edgelighting/R$dimen;->toast_text_start_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 751
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/edgelighting/R$dimen;->toast_text_end_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 752
    iget-object v3, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 753
    iget v4, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mMaxWidth:I

    add-int/2addr v4, v0

    sub-int/2addr v4, v2

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 754
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mTextRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 757
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/edgelighting/R$dimen;->toast_side_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    .line 758
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr p2, v1

    .line 759
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 760
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mNotiRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public show(J)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startDelay"
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 539
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->isAnimating:Ljava/lang/Boolean;

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string/jumbo v2, "translationY"

    .line 541
    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x15e

    .line 542
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 543
    new-instance v6, Lcom/samsung/android/edgelighting/utils/SineInOut80;

    invoke-direct {v6}, Lcom/samsung/android/edgelighting/utils/SineInOut80;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v6, v0, [F

    const/4 v7, 0x0

    aput v7, v6, v3

    .line 545
    invoke-static {p0, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 546
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v4, 0x64

    .line 547
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 548
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3f2b851f    # 0.67f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v7, v6, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v4, v0, [F

    aput v8, v4, v3

    const-string v5, "alpha"

    .line 550
    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x96

    .line 551
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v5, 0xc8

    .line 552
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 553
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 554
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    .line 555
    invoke-virtual {v5, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 556
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p2, 0x3

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v1, p2, v3

    aput-object v2, p2, v0

    const/4 v0, 0x2

    aput-object v4, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 557
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/samsung/android/edgelighting/view/MorphView$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/edgelighting/view/MorphView$2;-><init>(Lcom/samsung/android/edgelighting/view/MorphView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 603
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 604
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/AbsToastView;->mTranslationYAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public showExpandButton(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 987
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mShouldShowButton:Z

    if-eq p1, v0, :cond_1

    .line 988
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mExpandButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 989
    iput-boolean p1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mShouldShowButton:Z

    :cond_1
    return-void
.end method

.method public updateBlurState(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blur"
        }
    .end annotation

    .line 1005
    invoke-static {}, Lcom/samsung/android/edgelighting/utils/Utils;->isSupportBlurEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mToastRootLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mFakeShadow:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1009
    new-instance p1, Landroid/view/SemBlurInfo$Builder;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v0, 0x96

    .line 1010
    invoke-virtual {p1, v0}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    .line 1011
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$color;->noti_toast_bg_color_null:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    .line 1012
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/edgelighting/R$dimen;->lighting_popup_round_scaled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    .line 1013
    invoke-virtual {p1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p1

    .line 1014
    iget-object p0, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mFakeShadow:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1016
    invoke-virtual {v0, p1}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 1017
    iget-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView;->mFakeShadow:Landroid/view/View;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/samsung/android/edgelighting/R$color;->noti_toast_bg_color_null:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateMargin()V
    .locals 1

    .line 447
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/edgelighting/view/MorphView;->updateMargin(Landroid/view/WindowInsets;)V

    return-void
.end method

.method public updateRefreshUI(II)V
    .locals 2
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

    .line 923
    invoke-super {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/AbsToastView;->updateRefreshUI(II)V

    .line 925
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/MorphView;->initialize()V

    .line 926
    new-instance p1, Lcom/samsung/android/edgelighting/view/MorphView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/edgelighting/view/MorphView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/edgelighting/view/MorphView;)V

    const-wide/16 v0, 0x82

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
