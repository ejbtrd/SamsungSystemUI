.class public Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenIconAssistant;
.super Ljava/lang/Object;
.source "IndicatorScaleGardenIconAssistant.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultWidthResId:I

.field private mDotView:Landroid/view/View;

.field private mSmallestScreenWidthDp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenIconAssistant;->mSmallestScreenWidthDp:I

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenIconAssistant;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenIconAssistant;->mDotView:Landroid/view/View;

    .line 40
    iput p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenIconAssistant;->mDefaultWidthResId:I

    return-void
.end method


# virtual methods
.method public getIconWidth()I
    .locals 2

    .line 55
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenIconAssistant;->mDefaultWidthResId:I

    if-nez v1, :cond_0

    const/16 p0, 0x18

    return p0

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenIconAssistant;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenIconAssistant;->mDefaultWidthResId:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 58
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result v0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    :cond_1
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 45
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 46
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenIconAssistant;->mSmallestScreenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v0, p1, :cond_0

    .line 48
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenIconAssistant;->mSmallestScreenWidthDp:I

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenIconAssistant;->updateScale()V

    :cond_0
    return-void
.end method

.method public updateScale()V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenIconAssistant;->getIconWidth()I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenIconAssistant;->mDotView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 73
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenIconAssistant;->mDotView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
