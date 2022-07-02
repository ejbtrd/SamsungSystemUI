.class public Lcom/android/systemui/statusbar/policy/QSClockHeaderView;
.super Lcom/android/systemui/statusbar/policy/QSClock;
.source "QSClockHeaderView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field private mSmallestScreenWidthDp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QSClockHeaderView;->mSmallestScreenWidthDp:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QSClockHeaderView;->mSmallestScreenWidthDp:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QSClockHeaderView;->mSmallestScreenWidthDp:I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->onAttachedToWindow()V

    .line 64
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 97
    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDERBLE_TYPE_FOLD:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 98
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QSClockHeaderView;->mSmallestScreenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v0, p1, :cond_0

    .line 100
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QSClockHeaderView;->mSmallestScreenWidthDp:I

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockHeaderView;->updateScale()V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    .line 75
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_clock_size:I

    invoke-static {p0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 77
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getFontSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {p0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->onDetachedFromWindow()V

    .line 70
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public updateScale()V
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockHeaderView;->onDensityOrFontScaleChanged()V

    return-void
.end method
