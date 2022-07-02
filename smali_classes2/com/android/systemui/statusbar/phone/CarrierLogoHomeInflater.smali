.class public Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;
.super Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;
.source "CarrierLogoHomeInflater.java"

# interfaces
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# instance fields
.field private mEndPadding:I

.field private mLogoView:Landroid/widget/ImageView;

.field private final mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

.field private mResId:I

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;-><init>(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;)V

    .line 66
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    return-void
.end method

.method private loadDimenValues()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_carrierinfo_margin_side:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mEndPadding:I

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_carrierinfo_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mTopPadding:I

    return-void
.end method

.method private updateCarrierInformationVisibility()V
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mOriginalVisible:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->updateCarrierInformationVisibility(Z)V

    return-void
.end method

.method private updateColorFileter()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 186
    iget p0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mIconTint:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachCarrierInformationView()V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 84
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    .line 85
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v1, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->RES_ID_OF_HOME_CARRIER_LOGO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3, v4}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mResId:I

    .line 89
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setDefaultFocusHighlightEnabled(Z)V

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->loadDimenValues()V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mTopPadding:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mEndPadding:I

    invoke-virtual {v0, v2, v1, v3, v2}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->updateColorFileter()V

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "CarrierLogoHomeInflater"

    if-eqz v0, :cond_1

    .line 99
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add carrier log view, resId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mResId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", logoView="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected detachCarrierInformationView()V
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    .line 122
    const-class p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v0, "CarrierLogoHomeInflater"

    invoke-interface {p0, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->unregisterSubscriber(Ljava/lang/String;)V

    return-void
.end method

.method public getInfoTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CarrierLogoHomeInflater"

    return-object p0
.end method

.method protected isAttached()Z
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

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

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;->CARRIER_INFO_LOGO:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-interface {p0, v0, v3, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->get(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "HOME"

    .line 72
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
    .locals 2

    .line 177
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->loadDimenValues()V

    .line 179
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 180
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mTopPadding:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mEndPadding:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, p0, v1}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 167
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 168
    invoke-static {p1, p2, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mIconTint:I

    goto :goto_0

    .line 170
    :cond_0
    iput p3, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mIconTint:I

    .line 172
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->updateColorFileter()V

    return-void
.end method

.method public updateCarrierInformationVisibility(Z)V
    .locals 4

    .line 147
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mOriginalVisible:Z

    .line 148
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-interface {v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isHomeCarrierDisabled()Z

    move-result v0

    .line 149
    const-class v1, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->isNetworkInformationHiddenBySetting()Z

    move-result v1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCarrierInformationVisibility: visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", carrierLogoDisabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hiddenBySetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mLogoView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CarrierLogoHomeInflater"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->isInMainThread()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 156
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public updateCarrierPlmnText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateQuickStarStyle()V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->updateCarrierInformationVisibility()V

    return-void
.end method

.method protected updateScaleCarrierInformationView()V
    .locals 3

    .line 129
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 130
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 132
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
    return-void
.end method
