.class public abstract Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;
.super Ljava/lang/Object;
.source "IndicatorBasicGardener.java"


# static fields
.field private static TAG:Ljava/lang/String; = "IndicatorBasicGardener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

.field private mGardenInfo:Ljava/lang/String;

.field private mGardenSite:Lcom/android/systemui/statusbar/phone/IndicatorGarden;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mGardenSite:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    .line 45
    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mCurrentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    .line 46
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mGardenInfo:Ljava/lang/String;

    return-void
.end method

.method private updateDotTopMargin(I)V
    .locals 0

    .line 154
    const-class p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setDotTopMargin(I)V

    return-void
.end method


# virtual methods
.method public getCameraTopMargin()I
    .locals 0

    .line 158
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getCameraTopMargin()I

    move-result p0

    return p0
.end method

.method public abstract getCameraTopMarginContainerMarginLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;
.end method

.method public getDumpString()Ljava/lang/String;
    .locals 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mGardenInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mCurrentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    if-eqz p0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected needToUpdatePaddings(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mCurrentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getPaddingLeft()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mCurrentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getPaddingRight()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getPaddingRight()I

    move-result p1

    if-eq p0, p1, :cond_0

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

.method protected updateCenterContainerMaxWidth(I)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mGardenSite:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mGardenSite:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->setGardenMaxWidth(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)V
    .locals 2

    if-nez p1, :cond_0

    .line 54
    sget-object p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->TAG:Ljava/lang/String;

    const-string p1, "IndicatorGardenModel is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->needToUpdatePaddings(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->updateSidePadding(II)V

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mCurrentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->isEqual(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mCurrentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getMaxWidthCenterContainer()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getMaxWidthCenterContainer()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 69
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getMaxWidthCenterContainer()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->updateCenterContainerMaxWidth(I)V

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mCurrentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getMaxWidthRightContainer()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getMaxWidthRightContainer()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 73
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getMaxWidthRightContainer()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->updateRightContainerMaxWidth(I)V

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mCurrentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getMaxWidthLeftContainer()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getMaxWidthLeftContainer()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 77
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getMaxWidthLeftContainer()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->updateLeftContainerMaxWidth(I)V

    .line 80
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mCurrentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->isEqualVerticalValues(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 81
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getTotalHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->isCameraTopMargin()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->updateHeight(IZ)V

    .line 84
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mCurrentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    .line 85
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getDotTopMargin()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getDotTopMargin()I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 86
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->getDotTopMargin()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->updateDotTopMargin(I)V

    .line 88
    :cond_7
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mCurrentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    .line 89
    sget-object v0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mGardenInfo:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is done to update "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected updateHeight(IZ)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mGardenSite:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getHeightContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mGardenSite:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getHeightContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->getCameraTopMarginContainerMarginLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->getCameraTopMargin()I

    move-result p2

    if-lez p2, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->getCameraTopMargin()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->getCameraTopMargin()I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 146
    :cond_2
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 p0, 0x0

    .line 147
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_3
    :goto_0
    return-void
.end method

.method protected updateLeftContainerMaxWidth(I)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mGardenSite:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getLeftContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mGardenSite:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getLeftContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->setGardenMaxWidth(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateRightContainerMaxWidth(I)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mGardenSite:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mGardenSite:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->setGardenMaxWidth(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateSidePadding(II)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mGardenSite:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getSidePaddingContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->mGardenSite:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getSidePaddingContainer()Landroid/view/ViewGroup;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_1
    return-void
.end method
