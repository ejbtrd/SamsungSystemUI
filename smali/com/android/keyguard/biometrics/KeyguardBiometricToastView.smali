.class public Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;
.super Landroid/widget/FrameLayout;
.source "KeyguardBiometricToastView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;
    }
.end annotation


# instance fields
.field private final mAnimHandler:Landroid/os/Handler;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBodyAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mIsAnimating:Z

.field private mIsShowing:Z

.field private mToastBodyView:Landroid/widget/LinearLayout;

.field private mToastGuideText:Landroid/widget/TextView;

.field private mToastIcon:Landroid/widget/ImageView;

.field private mToastProgressBar:Landroid/widget/ProgressBar;

.field private mToastRoot:Landroid/widget/FrameLayout;

.field private mUpdateAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimHandler:Landroid/os/Handler;

    .line 83
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Landroid/widget/ImageView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Z
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->hasGuideText()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;FFLandroid/view/View;JLcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p6}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->changeTextAnim(FFLandroid/view/View;JLcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->reset()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->setViewAttribution()V

    return-void
.end method

.method private appearAnimation(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;II)V
    .locals 7

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 106
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->setText(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->hasGuideText()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->setViewAttribution()V

    .line 110
    :cond_0
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string/jumbo v4, "scaleX"

    invoke-static {p2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v3, 0xc8

    .line 111
    invoke-virtual {p2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 112
    new-instance v3, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {p2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    iget-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    const-string v5, "alpha"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    .line 115
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 117
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 118
    invoke-virtual {v6, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 119
    iget-object v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p2, v2, v1

    aput-object v3, v2, v0

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 120
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;ILcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private changeTextAnim(FFLandroid/view/View;J)V
    .locals 7

    .line 147
    sget-object v6, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->changeTextAnim(FFLandroid/view/View;JLcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    return-void
.end method

.method private changeTextAnim(FFLandroid/view/View;JLcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "alpha"

    .line 151
    invoke-static {p3, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    .line 152
    invoke-virtual {p1, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 153
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 p2, 0x96

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 154
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;

    invoke-direct {p2, p0, p6}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 p0, 0x1

    new-array v0, p0, [[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    aput-object v2, v0, v1

    .line 403
    new-instance v2, Landroid/content/res/ColorStateList;

    new-array p0, p0, [I

    aput p1, p0, v1

    invoke-direct {v2, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private disappearAnimation(J)V
    .locals 8

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    .line 187
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->hasGuideText()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 188
    iget-object v5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    move-object v2, p0

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->changeTextAnim(FFLandroid/view/View;J)V

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string/jumbo v4, "scaleX"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0xc8

    .line 191
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 192
    new-instance v5, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v5}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 194
    iget-object v5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    new-array v6, v2, [F

    fill-array-data v6, :array_1

    const-string v7, "alpha"

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 195
    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 197
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 198
    invoke-virtual {v3, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 199
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array p2, v2, [Landroid/animation/Animator;

    aput-object v1, p2, v0

    const/4 v0, 0x1

    aput-object v5, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 200
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$4;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$4;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 223
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getTextWidth()I
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 387
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 388
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->kg_biometric_toast_text_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 389
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v2, :cond_0

    const-class v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v2

    if-nez v2, :cond_0

    .line 390
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->kg_biometric_toast_text_max_width_sub_display:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 392
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private hasGuideText()Z
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNightMode()Z
    .locals 0

    .line 396
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x20

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reset()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 257
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 259
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsAnimating:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 262
    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsAnimating:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 268
    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsAnimating:Z

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 271
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 272
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 273
    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    .line 275
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    iput-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsAnimating:Z

    return-void
.end method

.method private setViewAttribution()V
    .locals 4

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 365
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->getTextWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->kg_biometric_toast_inner_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 366
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->kg_biometric_toast_image_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 367
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->kg_biometric_toast_text_padding_start:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 368
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 369
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->ic_biometric_toast_result_bg:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 371
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->isNightMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    sget v2, Lcom/android/systemui/R$color;->biometric_toast_bg_color_night:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/systemui/R$color;->biometric_toast_bg_color:I

    .line 371
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 374
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    .line 375
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 376
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateAnimation(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;II)V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    .line 228
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 229
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 230
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$5;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$5;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;IILcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 252
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateToastView(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;II)V
    .locals 1

    .line 316
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    if-eqz v0, :cond_0

    .line 317
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->updateAnimation(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;II)V

    goto :goto_0

    .line 319
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->appearAnimation(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismiss() , force = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardBiometricToastView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 284
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 288
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 292
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mUpdateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    const-wide/16 v0, 0x64

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    .line 294
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->disappearAnimation(J)V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 298
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    return p0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 88
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "KeyguardBiometricToastView"

    const-string v1, "onFinishInflate()"

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget v0, Lcom/android/systemui/R$id;->toast_root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    .line 92
    sget v0, Lcom/android/systemui/R$id;->toast_body_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    .line 93
    sget v0, Lcom/android/systemui/R$id;->biometric_toast_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    .line 94
    sget v0, Lcom/android/systemui/R$id;->biometric_toast_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Landroid/widget/ImageView;

    .line 95
    sget v0, Lcom/android/systemui/R$id;->biometric_progress:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastProgressBar:Landroid/widget/ProgressBar;

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->kg_background_auth_unlock_instruction_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->setViewAttribution()V

    .line 99
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->reset()V

    const/16 v0, 0x8

    .line 100
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 309
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const-string p0, "KeyguardBiometricToastView"

    const-string p1, "Icon view is null"

    .line 311
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 303
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V
    .locals 4

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update toast contents = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , already showing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardBiometricToastView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$6;->$SwitchMap$com$android$keyguard$biometrics$KeyguardBiometricToastView$ToastType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_3

    .line 345
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    sget v0, Lcom/android/systemui/R$string;->kg_background_auth_tablet_unlock_failed_text:I

    goto :goto_0

    .line 347
    :cond_1
    sget v0, Lcom/android/systemui/R$string;->kg_background_auth_unlock_failed_text:I

    :goto_0
    move v2, v0

    .line 348
    sget v0, Lcom/android/systemui/R$drawable;->ic_biometric_toast_lock_icon:I

    goto :goto_3

    .line 338
    :cond_2
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    sget v0, Lcom/android/systemui/R$string;->kg_background_auth_tablet_fingerprint_unlock_successed_text:I

    goto :goto_1

    .line 340
    :cond_3
    sget v0, Lcom/android/systemui/R$string;->kg_background_auth_fingerprint_unlock_successed_text:I

    :goto_1
    move v2, v0

    .line 341
    sget v0, Lcom/android/systemui/R$drawable;->ic_biometric_toast_unlock_icon:I

    goto :goto_3

    .line 332
    :cond_4
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 333
    sget v0, Lcom/android/systemui/R$string;->kg_background_auth_tablet_unlock_successed_text:I

    goto :goto_2

    .line 334
    :cond_5
    sget v0, Lcom/android/systemui/R$string;->kg_background_auth_unlock_successed_text:I

    :goto_2
    move v2, v0

    .line 335
    sget v0, Lcom/android/systemui/R$drawable;->ic_biometric_toast_unlock_icon:I

    .line 353
    :goto_3
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->isNightMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 354
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$color;->biometric_toast_text_color_night:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_4

    .line 355
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$color;->biometric_toast_text_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 356
    :goto_4
    iget-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 357
    iget-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 358
    sget-object v1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    if-eq p1, v1, :cond_7

    .line 359
    invoke-direct {p0, p1, v2, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->updateToastView(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;II)V

    :cond_7
    return-void
.end method
