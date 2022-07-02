.class public Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;
.super Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;
.source "CarrierLogoLockInflater.java"

# interfaces
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# instance fields
.field private mDensityDpi:I

.field private mLogoView:Landroid/widget/ImageView;

.field private final mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

.field private final mResId:I

.field private mTopPadding:I


# direct methods
.method public static synthetic $r8$lambda$6Z4lQJM7SQOX915SQDJQKDCjrwc(Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->lambda$onConfigurationChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$N1v5OmxB5SkjaNMUer_NRqwlbH8(Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->lambda$updateScaleCarrierInformationView$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;)V
    .locals 2

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;-><init>(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;)V

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mDensityDpi:I

    .line 63
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    .line 64
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->RES_ID_OF_LOCK_CARRIER_LOGO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mResId:I

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$1()V
    .locals 0

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onDetachedFromWindow()V

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onAttachedToWindow()V

    return-void
.end method

.method private synthetic lambda$updateScaleCarrierInformationView$0()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 134
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 137
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method private loadDimenValues()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_carrierinfo_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mTopPadding:I

    return-void
.end method

.method private updateCarrierInformationVisibility()V
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mOriginalVisible:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->updateCarrierInformationVisibility(Z)V

    return-void
.end method

.method private updateColorFileter()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 179
    iget p0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mIconTint:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachCarrierInformationView()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    .line 83
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDefaultFocusHighlightEnabled(Z)V

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->loadDimenValues()V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mTopPadding:I

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->updateColorFileter()V

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 101
    :cond_1
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v1, "CarrierLogoLockInflater"

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mDensityDpi:I

    :cond_2
    return-void
.end method

.method protected detachCarrierInformationView()V
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    .line 123
    const-class p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v0, "CarrierLogoLockInflater"

    invoke-interface {p0, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->unregisterSubscriber(Ljava/lang/String;)V

    return-void
.end method

.method public getInfoTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CarrierLogoLockInflater"

    return-object p0
.end method

.method protected isAttached()Z
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needToAttachView()Z
    .locals 4

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->CARRIER_INFO_LOGO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-interface {p0, v0, v3, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "LOCK"

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BOTH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 161
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 162
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mDensityDpi:I

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, p1, :cond_0

    .line 163
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mDensityDpi:I

    .line 164
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 173
    const-class p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->getFontColorOfLockIndicator()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mIconTint:I

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->updateColorFileter()V

    return-void
.end method

.method public updateCarrierInformationVisibility(Z)V
    .locals 3

    .line 146
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mOriginalVisible:Z

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 148
    const-class p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-interface {p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isLockCarrierDisabled()Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 149
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    xor-int/2addr p1, v0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->setVisibilityForObstacles(ZLandroid/view/View;)V

    :cond_2
    return-void
.end method

.method public updateCarrierPlmnText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateQuickStarStyle()V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->updateCarrierInformationVisibility()V

    return-void
.end method

.method protected updateScaleCarrierInformationView()V
    .locals 2

    .line 129
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 130
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
