.class public Lcom/android/keyguard/SecLockIconView;
.super Lcom/android/keyguard/LockIconView;
.source "SecLockIconView.java"


# instance fields
.field private final mAlphaIn:Landroid/view/animation/AlphaAnimation;

.field private final mAlphaOut:Landroid/view/animation/AlphaAnimation;

.field private mAnimTranslationX:Landroid/animation/ObjectAnimator;

.field private mIsLockStarEnabled:Z

.field private mIsOneHandModeEnabled:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mScaleXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mScaleYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

.field private final mSineOut33:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/LockIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 p2, 0x3f800000    # 1.0f

    const v0, 0x3e99999a    # 0.3f

    invoke-direct {p1, p2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mAlphaIn:Landroid/view/animation/AlphaAnimation;

    .line 48
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v0, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mAlphaOut:Landroid/view/animation/AlphaAnimation;

    .line 49
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mSineOut33:Landroid/view/animation/PathInterpolator;

    .line 63
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/SecLockIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/SecLockIconView;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView;->mAlphaIn:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method


# virtual methods
.method getLockIcon()Lcom/android/systemui/widget/SystemUIImageView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    return-object p0
.end method

.method public initBiometricErrorIndicationAnimationValue(Lcom/android/systemui/widget/SystemUIImageView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/SecLockIconView;->initScanningFaceAnimationValue(Lcom/android/systemui/widget/SystemUIImageView;)V

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mScaleXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mScaleXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mScaleYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mScaleYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3
    const/high16 p0, 0x3f800000    # 1.0f

    .line 142
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 143
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleY(F)V

    const/4 p0, 0x0

    .line 144
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setTranslationX(F)V

    return-void
.end method

.method public initScanningFaceAnimationValue(Lcom/android/systemui/widget/SystemUIImageView;)V
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconView;->isScanningFaceAnimationAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mAlphaIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mAlphaOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    if-eqz p1, :cond_0

    .line 205
    iget-boolean p0, p0, Lcom/android/keyguard/SecLockIconView;->mIsLockStarEnabled:Z

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 206
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public isScanningFaceAnimationAllowed()Z
    .locals 1

    .line 148
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_PUNCH_HOLE_FACE_VI:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/keyguard/SecLockIconView;->mIsOneHandModeEnabled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onFinishInflate()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/android/keyguard/LockIconView;->onFinishInflate()V

    .line 70
    sget v0, Lcom/android/systemui/R$id;->sec_lock_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    return-void
.end method

.method setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setLockStarEnabled(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/android/keyguard/SecLockIconView;->mIsLockStarEnabled:Z

    return-void
.end method

.method public setOneHandModeEnabled(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/android/keyguard/SecLockIconView;->mIsOneHandModeEnabled:Z

    return-void
.end method

.method public showBiometricErrorAnimation(Lcom/android/systemui/widget/SystemUIImageView;F)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/SecLockIconView;->initBiometricErrorIndicationAnimationValue(Lcom/android/systemui/widget/SystemUIImageView;)V

    .line 100
    invoke-virtual {p1}, Landroid/widget/ImageView;->getX()F

    move-result v0

    .line 101
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->kg_biometric_view_text_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    sub-float/2addr v0, p2

    float-to-int p2, v0

    .line 102
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->kg_biometric_view_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 104
    div-int/lit8 v1, v1, 0x2

    if-le p2, v1, :cond_1

    move p2, v1

    .line 108
    :cond_1
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    mul-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mSineOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    iget-object p2, p0, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x190

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 111
    iget-object p2, p0, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    .line 113
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p2, p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v1, 0x43160000    # 150.0f

    .line 114
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v2, 0x3ef5c28f    # 0.48f

    .line 115
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 114
    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/SecLockIconView;->mScaleXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    const v0, 0x3f3851ec    # 0.72f

    .line 116
    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 118
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p2, p1, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 119
    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 120
    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 119
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mScaleYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 121
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public showScanningFaceAnimation(Lcom/android/systemui/widget/SystemUIImageView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mAlphaIn:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mAlphaOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mAlphaOut:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mAlphaOut:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mAlphaIn:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/keyguard/SecLockIconView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/SecLockIconView$1;-><init>(Lcom/android/keyguard/SecLockIconView;Lcom/android/systemui/widget/SystemUIImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mAlphaOut:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/keyguard/SecLockIconView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/SecLockIconView$2;-><init>(Lcom/android/keyguard/SecLockIconView;Lcom/android/systemui/widget/SystemUIImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView;->mAlphaIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public updateLockIconViewLayoutParams()V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_1

    return-void

    .line 221
    :cond_1
    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 222
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v1

    if-nez v1, :cond_2

    .line 224
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->kg_smart_lock_view_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 225
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->kg_smart_lock_view_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_2

    .line 227
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v2

    if-nez v2, :cond_4

    const-class v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 228
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isDualDisplayPolicyAllowed()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 230
    :cond_3
    sget v2, Lcom/android/systemui/R$dimen;->kg_biometric_view_min_height:I

    goto :goto_1

    .line 229
    :cond_4
    :goto_0
    sget v2, Lcom/android/systemui/R$dimen;->kg_biometric_view_height:I

    .line 227
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 233
    :goto_2
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 234
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 235
    iget-object v1, p0, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 236
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
