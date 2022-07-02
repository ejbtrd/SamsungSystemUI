.class public Lcom/android/systemui/volume/view/VolumePanelMotion;
.super Ljava/lang/Object;
.source "VolumePanelMotion.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObservable<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final HIDE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final SETTING_BUTTON_ROTATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TITLE_TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;

.field private mSingleShowSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method public static synthetic $r8$lambda$-ANN-xJYbYofvIPSe6gNIqMTAVw(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/volume/view/VolumePanelMotion;->lambda$getSeekBarTouchDownAnimation$2(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$0AZf3YCV5aiRGJmNscof7b0uueo(Landroid/view/View;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelMotion;->lambda$startShowVolumeExpandAnimation$6(Landroid/view/View;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0x31s5c34QePL9N229DE79YqXsc(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->lambda$startShowVolumeExpandAnimation$7(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$43KuszWiD7oUTE_YV-qznmA9R-8(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->lambda$startVolumeDualViewShowAnimation$4(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$65l75GC3ydWVLJ6Lq7Zxru6NjCk(Landroid/view/View;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelMotion;->lambda$startHideVolumeExpandAnimation$8(Landroid/view/View;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AdybXrjfjMqGQ5SUAUhXTxEZA8Q(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/volume/view/VolumePanelMotion;->lambda$getSeekBarTouchUpAnimation$3(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$DY2_6Ae8b2M83rOo-ZNzk9t7lKg(Landroid/view/View;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelMotion;->lambda$startSubVolumePanelShowAnimation$1(Landroid/view/View;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EtMO0CLNdntlJv7CNbwLz8SMIcU(Lcom/android/systemui/volume/view/VolumePanelMotion;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->lambda$dispatch$0(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JKYBLOuoIs2xznZA73Rf_ggXQ5I(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->lambda$startHideVolumeExpandAnimation$9(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c2zSIECwdTgeSLyCR83yvIC63s8(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/volume/view/VolumePanelMotion;->lambda$startSplashAnimation$10(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$nGygmu1-sL_uexyp3tLuyyVg4y4(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->lambda$startVolumeDualViewHideAnimation$5(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 39
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    const v3, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->HIDE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 66
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->SETTING_BUTTON_ROTATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 71
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->TITLE_TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mObservers:Ljava/util/ArrayList;

    return-void
.end method

.method private getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;
    .locals 1

    const/4 p0, 0x0

    cmpl-float v0, p3, p0

    if-eqz v0, :cond_0

    neg-float p0, p2

    add-float/2addr p0, p3

    :cond_0
    const/4 p3, 0x2

    new-array p3, p3, [F

    const/4 v0, 0x0

    aput p2, p3, v0

    const/4 p2, 0x1

    aput p0, p3, p2

    const-string/jumbo p0, "translationX"

    .line 709
    invoke-static {p1, p0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p4

    .line 710
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 711
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private synthetic lambda$dispatch$0(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 1

    .line 106
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 107
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getSeekBarTouchDownAnimation$2(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 193
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private static synthetic lambda$getSeekBarTouchUpAnimation$3(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 215
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private static synthetic lambda$startHideVolumeExpandAnimation$8(Landroid/view/View;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 337
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    const p2, 0x3ecccccd    # 0.4f

    cmpg-float p0, p0, p2

    if-gez p0, :cond_0

    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-eqz p0, :cond_0

    .line 338
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$startHideVolumeExpandAnimation$9(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 343
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private static synthetic lambda$startShowVolumeExpandAnimation$6(Landroid/view/View;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 291
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    const p2, 0x3e4ccccd    # 0.2f

    cmpl-float p0, p0, p2

    if-lez p0, :cond_0

    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-eqz p0, :cond_0

    .line 292
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$startShowVolumeExpandAnimation$7(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 297
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private static synthetic lambda$startSplashAnimation$10(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/4 p1, 0x0

    cmpl-float p2, p3, p1

    if-nez p2, :cond_0

    .line 633
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 634
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$startSubVolumePanelShowAnimation$1(Landroid/view/View;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    const p2, 0x3dcccccd    # 0.1f

    cmpl-float p0, p0, p2

    if-lez p0, :cond_0

    .line 131
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$startVolumeDualViewHideAnimation$5(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 264
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private static synthetic lambda$startVolumeDualViewShowAnimation$4(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 234
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 105
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/volume/view/VolumePanelMotion;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 112
    invoke-interface {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 34
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelMotion;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public disposeActionObserver()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    :cond_0
    return-void
.end method

.method public getSeekBarTouchDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1

    .line 192
    new-instance p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p0, p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 193
    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda7;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 194
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v0, 0x43960000    # 300.0f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 195
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 194
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public getSeekBarTouchUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1

    .line 214
    new-instance p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p0, p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 215
    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda8;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 216
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v0, 0x43480000    # 200.0f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 217
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 216
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method public getSettingButtonRotateAnimation(Landroid/view/View;Z)Landroid/animation/AnimatorSet;
    .locals 7

    const/4 p0, 0x2

    new-array v0, p0, [F

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/high16 v3, -0x3d4c0000    # -90.0f

    :goto_0
    const/4 v4, 0x1

    aput v3, v0, v4

    const-string/jumbo v3, "rotation"

    invoke-static {p1, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0x190

    .line 368
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 369
    sget-object v3, Lcom/android/systemui/volume/view/VolumePanelMotion;->SETTING_BUTTON_ROTATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p0, p0, [F

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, p0, v2

    if-eqz p2, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_1
    aput v1, p0, v4

    const-string v1, "alpha"

    invoke-static {p1, v1, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v5, 0x64

    .line 372
    invoke-virtual {p0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 373
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 375
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v4, [Landroid/animation/Animator;

    aput-object v0, v1, v2

    .line 376
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v4, [Landroid/animation/Animator;

    aput-object p0, v0, v2

    .line 377
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p2, :cond_2

    const-wide/16 v0, 0x32

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    .line 378
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p1
.end method

.method public getTitleAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 383
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->volume_panel_expand_title_translation_y:I

    .line 384
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x0

    const/4 v3, 0x1

    aput p0, v1, v3

    const-string/jumbo p0, "translationY"

    .line 383
    invoke-static {p1, p0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v4, 0x190

    .line 385
    invoke-virtual {p0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 386
    sget-object v1, Lcom/android/systemui/volume/view/VolumePanelMotion;->TITLE_TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v0, [F

    .line 388
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 389
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 390
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 392
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v3, [Landroid/animation/Animator;

    aput-object p0, v1, v2

    .line 393
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p0, v3, [Landroid/animation/Animator;

    aput-object p1, p0, v2

    .line 394
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p0, 0x32

    .line 395
    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public initDependencies(Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/android/systemui/volume/store/VolumePanelStore;Landroid/content/res/Resources;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 92
    invoke-virtual {p0, p2}, Lcom/android/systemui/volume/view/VolumePanelMotion;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 93
    iput-object p3, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public startHideVolumeExpandAnimation(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 12

    .line 331
    sget v0, Lcom/android/systemui/R$id;->volume_setting_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v2, v3

    const-string v6, "alpha"

    invoke-static {p1, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v6, 0xc8

    .line 334
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 335
    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3ea8f5c3    # 0.33f

    const v10, 0x3f2b851f    # 0.67f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v5, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 336
    new-instance v8, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda5;

    invoke-direct {v8, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda5;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p2, v1, [F

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    aput v1, p2, v4

    const v1, 0x3f666666    # 0.9f

    aput v1, p2, v3

    const-string/jumbo v1, "scaleX"

    invoke-static {p1, v1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 343
    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 344
    invoke-virtual {p2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 345
    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v9, v5, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 347
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v3, [Landroid/animation/Animator;

    aput-object v2, v1, v4

    .line 348
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v3, [Landroid/animation/Animator;

    aput-object p2, v1, v4

    .line 349
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p2, v3, [Landroid/animation/Animator;

    .line 350
    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSettingButtonRotateAnimation(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 351
    new-instance p2, Lcom/android/systemui/volume/view/VolumePanelMotion$6;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/volume/view/VolumePanelMotion$6;-><init>(Lcom/android/systemui/volume/view/VolumePanelMotion;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 363
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p8

    const/16 v7, 0x8

    move-object/from16 v8, p6

    .line 402
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    const/4 v8, 0x0

    .line 403
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v9, p7

    .line 404
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_0

    .line 406
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 407
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 408
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 410
    :cond_0
    iget-object v5, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/systemui/R$dimen;->volume_media_icon_note_max_x:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 411
    iget-object v7, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    if-nez v6, :cond_1

    .line 412
    sget v9, Lcom/android/systemui/R$dimen;->volume_media_icon_wave_s_max_x:I

    goto :goto_0

    :cond_1
    sget v9, Lcom/android/systemui/R$dimen;->volume_sub_display_media_icon_wave_s_max_x:I

    .line 411
    :goto_0
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 413
    iget-object v9, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    if-nez v6, :cond_2

    .line 414
    sget v10, Lcom/android/systemui/R$dimen;->volume_media_icon_wave_l_max_x:I

    goto :goto_1

    :cond_2
    sget v10, Lcom/android/systemui/R$dimen;->volume_sub_display_media_icon_wave_l_max_x:I

    .line 413
    :goto_1
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    if-eqz v6, :cond_3

    .line 415
    sget-boolean v10, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v10, :cond_3

    .line 416
    iget-object v5, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/systemui/R$dimen;->volume_sub_large_display_media_icon_note_max_x:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 417
    iget-object v7, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/android/systemui/R$dimen;->volume_sub_large_display_media_icon_wave_s_max_x:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 418
    iget-object v9, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/android/systemui/R$dimen;->volume_sub_large_display_media_icon_wave_l_max_x:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 422
    :cond_3
    sget v10, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-eq v1, v10, :cond_4

    sget v10, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ALARM:I

    if-ne v1, v10, :cond_7

    .line 423
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    if-nez v6, :cond_5

    .line 424
    sget v7, Lcom/android/systemui/R$dimen;->volume_sound_icon_wave_s_max_x:I

    goto :goto_2

    :cond_5
    sget v7, Lcom/android/systemui/R$dimen;->volume_sub_display_sound_icon_wave_s_max_x:I

    .line 423
    :goto_2
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 425
    iget-object v1, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    if-nez v6, :cond_6

    .line 426
    sget v9, Lcom/android/systemui/R$dimen;->volume_sound_icon_wave_l_max_x:I

    goto :goto_3

    :cond_6
    sget v9, Lcom/android/systemui/R$dimen;->volume_sub_display_sound_icon_wave_l_max_x:I

    .line 425
    :goto_3
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    if-eqz v6, :cond_7

    .line 427
    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v1, :cond_7

    .line 428
    iget-object v1, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/systemui/R$dimen;->volume_sub_large_display_sound_icon_wave_s_max_x:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 429
    iget-object v0, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->volume_sub_large_display_sound_icon_wave_l_max_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    :cond_7
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getAlpha()F

    move-result v10

    aput v10, v1, v8

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    aput v11, v1, v10

    const-string v12, "alpha"

    invoke-static {v3, v12, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v13, v0, [F

    .line 433
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v14

    aput v14, v13, v8

    aput v11, v13, v10

    invoke-static {v4, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 434
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v13, v10, [Landroid/animation/Animator;

    aput-object v1, v13, v8

    .line 435
    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v10, [Landroid/animation/Animator;

    aput-object v11, v1, v8

    .line 436
    invoke-virtual {v12, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v1, 0x3

    if-ne v6, v1, :cond_8

    const-wide/16 v13, 0x0

    goto :goto_4

    :cond_8
    const-wide/16 v15, 0x96

    move-wide v13, v15

    .line 437
    :goto_4
    invoke-virtual {v12, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 438
    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v12, v11}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v11, v0, [F

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v13

    aput v13, v11, v8

    int-to-float v5, v5

    aput v5, v11, v10

    const-string/jumbo v5, "x"

    invoke-static {v2, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v11, v0, [F

    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v13

    aput v13, v11, v8

    int-to-float v7, v7

    aput v7, v11, v10

    invoke-static {v3, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v0, v0, [F

    .line 442
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v7

    aput v7, v0, v8

    int-to-float v7, v9

    aput v7, v0, v10

    invoke-static {v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 444
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v10, [Landroid/animation/Animator;

    aput-object v2, v5, v8

    .line 445
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v10, [Landroid/animation/Animator;

    aput-object v3, v2, v8

    .line 446
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v10, [Landroid/animation/Animator;

    aput-object v0, v2, v8

    .line 447
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-ne v6, v1, :cond_9

    const-wide/16 v13, 0x0

    goto :goto_5

    :cond_9
    const-wide/16 v13, 0xc8

    .line 448
    :goto_5
    invoke-virtual {v4, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 449
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 451
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v10, [Landroid/animation/Animator;

    aput-object v12, v1, v8

    .line 452
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v10, [Landroid/animation/Animator;

    aput-object v4, v1, v8

    .line 453
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 454
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p9

    const/16 v7, 0x8

    move-object/from16 v8, p7

    .line 458
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    const/4 v8, 0x0

    .line 459
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v9, p8

    .line 460
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_0

    .line 462
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 463
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 464
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 466
    :cond_0
    iget-object v5, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/systemui/R$dimen;->volume_media_icon_note_mid_x:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 467
    iget-object v7, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    if-nez v6, :cond_1

    .line 468
    sget v9, Lcom/android/systemui/R$dimen;->volume_media_icon_wave_s_mid_x:I

    goto :goto_0

    :cond_1
    sget v9, Lcom/android/systemui/R$dimen;->volume_sub_display_media_icon_wave_s_mid_x:I

    .line 467
    :goto_0
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 469
    iget-object v9, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    if-nez v6, :cond_2

    .line 470
    sget v10, Lcom/android/systemui/R$dimen;->volume_media_icon_wave_l_mid_x:I

    goto :goto_1

    :cond_2
    sget v10, Lcom/android/systemui/R$dimen;->volume_sub_display_media_icon_wave_l_mid_x:I

    .line 469
    :goto_1
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    if-eqz v6, :cond_3

    .line 471
    sget-boolean v10, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v10, :cond_3

    .line 472
    iget-object v5, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/systemui/R$dimen;->volume_sub_large_display_media_icon_note_mid_x:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 473
    iget-object v7, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/android/systemui/R$dimen;->volume_sub_large_display_media_icon_wave_s_mid_x:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 474
    iget-object v9, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/android/systemui/R$dimen;->volume_sub_large_display_media_icon_wave_l_mid_x:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    :cond_3
    const/high16 v10, 0x3f000000    # 0.5f

    const v11, 0x3dcccccd    # 0.1f

    .line 478
    sget v12, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-eq v1, v12, :cond_4

    sget v12, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ALARM:I

    if-ne v1, v12, :cond_7

    .line 479
    :cond_4
    iget-object v7, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    if-nez v6, :cond_5

    .line 480
    sget v9, Lcom/android/systemui/R$dimen;->volume_sound_icon_wave_s_mid_x:I

    goto :goto_2

    :cond_5
    sget v9, Lcom/android/systemui/R$dimen;->volume_sub_display_sound_icon_wave_s_mid_x:I

    .line 479
    :goto_2
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 481
    iget-object v9, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    if-nez v6, :cond_6

    .line 482
    sget v12, Lcom/android/systemui/R$dimen;->volume_sound_icon_wave_l_mid_x:I

    goto :goto_3

    :cond_6
    sget v12, Lcom/android/systemui/R$dimen;->volume_sub_display_sound_icon_wave_l_mid_x:I

    .line 481
    :goto_3
    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    if-eqz v6, :cond_7

    .line 483
    sget-boolean v12, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v12, :cond_7

    .line 484
    iget-object v7, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/android/systemui/R$dimen;->volume_sub_large_display_sound_icon_wave_s_mid_x:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 485
    iget-object v9, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/android/systemui/R$dimen;->volume_sub_large_display_sound_icon_wave_l_mid_x:I

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    :cond_7
    const/4 v12, 0x2

    new-array v13, v12, [F

    .line 489
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v14

    aput v14, v13, v8

    const/4 v14, 0x1

    aput v10, v13, v14

    const-string v10, "alpha"

    invoke-static {v3, v10, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-array v15, v12, [F

    .line 490
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    move-result v16

    aput v16, v15, v8

    aput v11, v15, v14

    invoke-static {v4, v10, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 491
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v15, v14, [Landroid/animation/Animator;

    aput-object v13, v15, v8

    .line 492
    invoke-virtual {v11, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v13, v14, [Landroid/animation/Animator;

    aput-object v10, v13, v8

    .line 493
    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v10, 0x3

    if-ne v6, v10, :cond_8

    const-wide/16 v14, 0x0

    goto :goto_4

    :cond_8
    const-wide/16 v17, 0x64

    move-wide/from16 v14, v17

    .line 494
    :goto_4
    invoke-virtual {v11, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 495
    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v13, v12, [F

    .line 497
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v14

    aput v14, v13, v8

    int-to-float v5, v5

    const/4 v14, 0x1

    aput v5, v13, v14

    const-string/jumbo v5, "x"

    invoke-static {v2, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v13, v12, [F

    .line 498
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v15

    aput v15, v13, v8

    int-to-float v7, v7

    aput v7, v13, v14

    invoke-static {v3, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v7, v12, [F

    .line 499
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getX()F

    move-result v12

    aput v12, v7, v8

    int-to-float v9, v9

    aput v9, v7, v14

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 501
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v7, v14, [Landroid/animation/Animator;

    aput-object v2, v7, v8

    .line 502
    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v14, [Landroid/animation/Animator;

    aput-object v3, v2, v8

    .line 503
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v14, [Landroid/animation/Animator;

    aput-object v4, v2, v8

    .line 504
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-ne v6, v10, :cond_9

    const-wide/16 v2, 0x0

    goto :goto_5

    :cond_9
    const-wide/16 v15, 0xc8

    move-wide v2, v15

    .line 505
    :goto_5
    invoke-virtual {v5, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 506
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 508
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/animation/Animator;

    aput-object v5, v4, v8

    .line 509
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v11, v3, v8

    .line 510
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 511
    new-instance v3, Lcom/android/systemui/volume/view/VolumePanelMotion$7;

    move/from16 v4, p2

    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/volume/view/VolumePanelMotion$7;-><init>(Lcom/android/systemui/volume/view/VolumePanelMotion;II)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 521
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p9

    const/16 v7, 0x8

    move-object/from16 v8, p7

    .line 525
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    const/4 v8, 0x0

    .line 526
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v9, p8

    .line 527
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_0

    .line 529
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 530
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 531
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 536
    :cond_0
    iget-object v5, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    if-nez v6, :cond_1

    .line 537
    sget v7, Lcom/android/systemui/R$dimen;->volume_media_icon_note_min_x:I

    goto :goto_0

    :cond_1
    sget v7, Lcom/android/systemui/R$dimen;->volume_sub_display_media_icon_note_min_x:I

    .line 536
    :goto_0
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 538
    sget v7, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    const/4 v9, 0x0

    if-eq v1, v7, :cond_3

    sget v7, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ALARM:I

    if-ne v1, v7, :cond_2

    goto :goto_1

    :cond_2
    move v7, v5

    move v5, v9

    goto :goto_3

    :cond_3
    :goto_1
    const v5, 0x3e99999a    # 0.3f

    .line 540
    iget-object v7, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    if-nez v6, :cond_4

    .line 541
    sget v10, Lcom/android/systemui/R$dimen;->volume_sound_icon_spk_min_x:I

    goto :goto_2

    :cond_4
    sget v10, Lcom/android/systemui/R$dimen;->volume_sub_display_sound_icon_spk_min_x:I

    .line 540
    :goto_2
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :goto_3
    if-eqz v6, :cond_5

    .line 543
    sget-boolean v10, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v10, :cond_5

    .line 544
    iget-object v7, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/android/systemui/R$dimen;->volume_sub_large_display_media_icon_note_min_x:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :cond_5
    const/4 v10, 0x2

    new-array v11, v10, [F

    .line 547
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v12

    aput v12, v11, v8

    const/4 v12, 0x1

    aput v5, v11, v12

    const-string v5, "alpha"

    invoke-static {v3, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-array v13, v10, [F

    .line 548
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    move-result v14

    aput v14, v13, v8

    aput v9, v13, v12

    invoke-static {v4, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 549
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v13, v12, [Landroid/animation/Animator;

    aput-object v11, v13, v8

    .line 550
    invoke-virtual {v5, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v11, v12, [Landroid/animation/Animator;

    aput-object v4, v11, v8

    .line 551
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v4, 0x3

    if-ne v6, v4, :cond_6

    const-wide/16 v13, 0x0

    goto :goto_4

    :cond_6
    const-wide/16 v15, 0x64

    move-wide v13, v15

    .line 552
    :goto_4
    invoke-virtual {v5, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 553
    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v11, v10, [F

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v13

    aput v13, v11, v8

    int-to-float v7, v7

    aput v7, v11, v12

    const-string/jumbo v7, "x"

    invoke-static {v2, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 556
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v13, v12, [Landroid/animation/Animator;

    aput-object v2, v13, v8

    .line 557
    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 558
    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-eq v1, v2, :cond_7

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ALARM:I

    if-ne v1, v2, :cond_a

    .line 559
    :cond_7
    iget-object v2, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    if-nez v6, :cond_8

    .line 560
    sget v13, Lcom/android/systemui/R$dimen;->volume_sound_icon_wave_s_min_x:I

    goto :goto_5

    :cond_8
    sget v13, Lcom/android/systemui/R$dimen;->volume_sub_display_media_icon_wave_s_mid_x:I

    .line 559
    :goto_5
    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz v6, :cond_9

    .line 561
    sget-boolean v13, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v13, :cond_9

    .line 562
    iget-object v2, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/android/systemui/R$dimen;->volume_sub_large_display_sound_icon_wave_s_min_x:I

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_9
    new-array v10, v10, [F

    .line 564
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v13

    aput v13, v10, v8

    int-to-float v2, v2

    aput v2, v10, v12

    invoke-static {v3, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v12, [Landroid/animation/Animator;

    aput-object v2, v3, v8

    .line 565
    invoke-virtual {v11, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_a
    if-ne v6, v4, :cond_b

    const-wide/16 v13, 0x0

    goto :goto_6

    :cond_b
    const-wide/16 v13, 0xc8

    .line 567
    :goto_6
    invoke-virtual {v11, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 568
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v9, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 570
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v12, [Landroid/animation/Animator;

    aput-object v5, v3, v8

    .line 571
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v3, v12, [Landroid/animation/Animator;

    aput-object v11, v3, v8

    .line 572
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 573
    new-instance v3, Lcom/android/systemui/volume/view/VolumePanelMotion$8;

    move/from16 v4, p2

    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/volume/view/VolumePanelMotion$8;-><init>(Lcom/android/systemui/volume/view/VolumePanelMotion;II)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 583
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 6

    const/4 v0, 0x0

    .line 587
    invoke-virtual {p6, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p6, 0x4

    .line 588
    invoke-virtual {p2, p6}, Landroid/view/View;->setVisibility(I)V

    .line 589
    invoke-virtual {p7, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p5, :cond_0

    const/16 p6, 0x8

    .line 591
    invoke-virtual {p5, p6}, Landroid/view/View;->setVisibility(I)V

    .line 592
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 593
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 595
    :cond_0
    iget-object p5, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    if-nez p8, :cond_1

    .line 596
    sget p6, Lcom/android/systemui/R$dimen;->volume_media_icon_note_min_x:I

    goto :goto_0

    :cond_1
    sget p6, Lcom/android/systemui/R$dimen;->volume_sub_display_media_icon_note_min_x:I

    .line 595
    :goto_0
    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    .line 597
    sget p6, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-ne p1, p6, :cond_2

    .line 598
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget p5, Lcom/android/systemui/R$dimen;->volume_sound_icon_spk_min_x:I

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    :cond_2
    if-eqz p8, :cond_3

    .line 600
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz p1, :cond_3

    .line 601
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget p5, Lcom/android/systemui/R$dimen;->volume_sub_large_display_media_icon_note_min_x:I

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    :cond_3
    const/4 p1, 0x2

    new-array p6, p1, [F

    .line 605
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result v1

    aput v1, p6, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, p6, v1

    const-string v3, "alpha"

    invoke-static {p3, v3, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    new-array p6, p1, [F

    .line 606
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, p6, v0

    aput v2, p6, v1

    invoke-static {p4, v3, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 607
    new-instance p6, Landroid/animation/AnimatorSet;

    invoke-direct {p6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v1, [Landroid/animation/Animator;

    aput-object p3, v3, v0

    .line 608
    invoke-virtual {p6, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p3, v1, [Landroid/animation/Animator;

    aput-object p4, p3, v0

    .line 609
    invoke-virtual {p6, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p3, 0x0

    const/4 v3, 0x3

    if-ne p8, v3, :cond_4

    move-wide v4, p3

    goto :goto_1

    :cond_4
    const-wide/16 v4, 0x64

    .line 610
    :goto_1
    invoke-virtual {p6, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 611
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p6, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p1, p1, [F

    .line 613
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v4

    aput v4, p1, v0

    int-to-float p5, p5

    aput p5, p1, v1

    const-string/jumbo p5, "x"

    invoke-static {p2, p5, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-ne p8, v3, :cond_5

    goto :goto_2

    :cond_5
    const-wide/16 p3, 0xc8

    .line 614
    :goto_2
    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 615
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const p3, 0x3e6147ae    # 0.22f

    const/high16 p4, 0x3e800000    # 0.25f

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, p4, v2, p5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 617
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p3, v1, [Landroid/animation/Animator;

    aput-object p6, p3, v0

    .line 618
    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p3, v1, [Landroid/animation/Animator;

    aput-object p1, p3, v0

    .line 619
    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 620
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    if-eq p8, v3, :cond_6

    .line 622
    invoke-virtual {p0, p7}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startSplashAnimation(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method public startSeekBarTouchDownAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 207
    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 208
    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_0
    if-eqz p3, :cond_1

    const p0, 0x3f866666    # 1.05f

    goto :goto_0

    :cond_1
    const p0, 0x3f88f5c3    # 1.07f

    .line 210
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public startSeekBarTouchUpAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 222
    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 223
    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 225
    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public startShowVolumeExpandAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v2

    const-string v5, "alpha"

    invoke-static {p1, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0xc8

    .line 288
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 289
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 290
    new-instance v5, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda4;

    invoke-direct {v5, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v5

    aput v5, v0, v3

    aput v4, v0, v2

    const-string/jumbo v5, "scaleX"

    invoke-static {p1, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 297
    new-instance v5, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v5, 0x190

    .line 298
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 299
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e6147ae    # 0.22f

    const/high16 v7, 0x3e800000    # 0.25f

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 301
    sget v4, Lcom/android/systemui/R$id;->volume_setting_button:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 302
    sget v5, Lcom/android/systemui/R$id;->volume_title:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 304
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v6, v2, [Landroid/animation/Animator;

    aput-object v1, v6, v3

    .line 305
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v2, [Landroid/animation/Animator;

    aput-object v0, v1, v3

    .line 306
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v2, [Landroid/animation/Animator;

    .line 307
    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSettingButtonRotateAnimation(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v2, [Landroid/animation/Animator;

    .line 308
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getTitleAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0xfa

    .line 309
    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 310
    new-instance p1, Lcom/android/systemui/volume/view/VolumePanelMotion$5;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/volume/view/VolumePanelMotion$5;-><init>(Lcom/android/systemui/volume/view/VolumePanelMotion;Ljava/lang/Runnable;)V

    invoke-virtual {v5, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 324
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 325
    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz p0, :cond_0

    .line 326
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public startSoundVibrationAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 7

    const/4 v0, 0x0

    .line 644
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x4

    .line 645
    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 646
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 647
    invoke-virtual {p6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 648
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 649
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 651
    iget-object p5, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget p6, Lcom/android/systemui/R$dimen;->volume_sound_icon_spk_min_x:I

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    const/4 p6, 0x2

    new-array v1, p6, [F

    .line 654
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result v2

    aput v2, v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const-string v4, "alpha"

    invoke-static {p3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    new-array v1, p6, [F

    .line 655
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v1, v0

    aput v3, v1, v2

    invoke-static {p4, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 656
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v2, [Landroid/animation/Animator;

    aput-object p3, v4, v0

    .line 657
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p3, v2, [Landroid/animation/Animator;

    aput-object p4, p3, v0

    .line 658
    invoke-virtual {v1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p3, 0x0

    const/4 v4, 0x3

    if-ne p7, v4, :cond_0

    move-wide v5, p3

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x32

    .line 659
    :goto_0
    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 660
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p6, p6, [F

    .line 662
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v5

    aput v5, p6, v0

    int-to-float p5, p5

    aput p5, p6, v2

    const-string/jumbo p5, "x"

    invoke-static {p2, p5, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    if-ne p7, v4, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 p3, 0xc8

    .line 663
    :goto_1
    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 664
    new-instance p3, Landroid/view/animation/PathInterpolator;

    const p4, 0x3e6147ae    # 0.22f

    const/high16 p5, 0x3e800000    # 0.25f

    const/high16 p6, 0x3f800000    # 1.0f

    invoke-direct {p3, p4, p5, v3, p6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 666
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p4, v2, [Landroid/animation/Animator;

    aput-object v1, p4, v0

    .line 667
    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p4, v2, [Landroid/animation/Animator;

    aput-object p2, p4, v0

    .line 668
    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 669
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    if-eq p7, v4, :cond_2

    .line 672
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startVibrationAnimation(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public startSplashAnimation(Landroid/view/View;)V
    .locals 2

    const/4 p0, 0x0

    .line 627
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 628
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 629
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 630
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 631
    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda9;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 637
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v1, 0x43960000    # 300.0f

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const v1, 0x3f147ae1    # 0.58f

    .line 638
    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 637
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 639
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    const/high16 p0, 0x3f800000    # 1.0f

    .line 640
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public startSubScreenSeekBarTouchDownAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 200
    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 201
    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_0
    if-eqz p3, :cond_1

    const p0, 0x3f83d70a    # 1.03f

    goto :goto_0

    :cond_1
    const p0, 0x3f866666    # 1.05f

    .line 203
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public startSubVolumePanelHideAnimation(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 140
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 141
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelMotion$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/volume/view/VolumePanelMotion$1;-><init>(Lcom/android/systemui/volume/view/VolumePanelMotion;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 149
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public startSubVolumePanelShowAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    aput v0, p0, v1

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    const-string v0, "alpha"

    invoke-static {p1, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 126
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 127
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 128
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda6;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public startVibrationAnimation(Landroid/view/View;)V
    .locals 7

    .line 677
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->volume_vibrate_init:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 678
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->volume_vibrate_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    neg-float v2, v0

    const/4 v3, 0x0

    const/16 v4, 0x3c

    .line 679
    invoke-direct {p0, p1, v3, v2, v4}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v4

    sub-float v5, v0, v1

    const/16 v6, 0x50

    .line 683
    invoke-direct {p0, p1, v2, v5, v6}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v2

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v1, v6

    sub-float/2addr v0, v1

    neg-float v0, v0

    const/16 v1, 0x64

    .line 687
    invoke-direct {p0, p1, v5, v0, v1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v1

    const/16 v5, 0x78

    .line 691
    invoke-direct {p0, p1, v0, v3, v5}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object p0

    .line 696
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 697
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 703
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 704
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startVolumeDualViewHideAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 11

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    const-string v5, "alpha"

    invoke-static {p1, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0xc8

    .line 260
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 261
    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v8, 0x3ea8f5c3    # 0.33f

    const v9, 0x3f2b851f    # 0.67f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v4, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v0, [F

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v7

    aput v7, v0, v3

    const v7, 0x3f666666    # 0.9f

    aput v7, v0, v2

    const-string/jumbo v7, "scaleX"

    invoke-static {p1, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 264
    new-instance v7, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda3;

    invoke-direct {v7, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 265
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 266
    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v8, v4, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 268
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v2, [Landroid/animation/Animator;

    aput-object v1, v4, v3

    .line 269
    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v2, [Landroid/animation/Animator;

    aput-object v0, v1, v3

    .line 270
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 271
    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelMotion$4;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/volume/view/VolumePanelMotion$4;-><init>(Lcom/android/systemui/volume/view/VolumePanelMotion;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 283
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startVolumeDualViewShowAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 8

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v3

    const-string v6, "alpha"

    invoke-static {p1, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v6, 0xc8

    .line 231
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 232
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v1, v1, [F

    .line 233
    fill-array-data v1, :array_0

    const-string/jumbo v6, "scaleX"

    invoke-static {p1, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 234
    new-instance v6, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda1;

    invoke-direct {v6, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v6, 0x190

    .line 235
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 236
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e6147ae    # 0.22f

    const/high16 v7, 0x3e800000    # 0.25f

    invoke-direct {p1, v6, v7, v0, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v3, [Landroid/animation/Animator;

    aput-object v2, v0, v4

    .line 239
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v3, [Landroid/animation/Animator;

    aput-object v1, v0, v4

    .line 240
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 241
    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelMotion$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/VolumePanelMotion$3;-><init>(Lcom/android/systemui/volume/view/VolumePanelMotion;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 252
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 253
    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz p0, :cond_0

    .line 254
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startVolumePanelDismissAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mSingleShowSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mSingleShowSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 173
    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eqz v1, :cond_1

    neg-int p1, p1

    :cond_1
    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x15e

    .line 174
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->HIDE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelMotion$2;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/volume/view/VolumePanelMotion$2;-><init>(Lcom/android/systemui/volume/view/VolumePanelMotion;Ljava/lang/Runnable;)V

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 188
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public startVolumePanelShowAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3

    .line 153
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mSingleShowSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 154
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x43160000    # 150.0f

    .line 156
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v2, 0x3f333333    # 0.7f

    .line 157
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 160
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 161
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mSingleShowSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 162
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mSingleShowSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 163
    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz p0, :cond_1

    .line 164
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumeDisposable;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method
