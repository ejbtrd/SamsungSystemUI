.class public Lcom/android/keyguard/CarrierText;
.super Lcom/android/systemui/widget/SystemUITextView;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierText$SlimIndicatorVisibilityHelper;,
        Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;
    }
.end annotation


# instance fields
.field private final mShowAirplaneMode:Z

.field private final mShowMissingSim:Z

.field private mSlimIndicatorVisibilityHelper:Lcom/android/keyguard/CarrierText$SlimIndicatorVisibilityHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    new-instance v0, Lcom/android/keyguard/CarrierText$SlimIndicatorVisibilityHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/CarrierText$SlimIndicatorVisibilityHelper;-><init>(Lcom/android/keyguard/CarrierText;Lcom/android/keyguard/CarrierText$1;)V

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mSlimIndicatorVisibilityHelper:Lcom/android/keyguard/CarrierText$SlimIndicatorVisibilityHelper;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/R$styleable;->CarrierText:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    :try_start_0
    sget p2, Lcom/android/systemui/R$styleable;->CarrierText_allCaps:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 58
    sget v0, Lcom/android/systemui/R$styleable;->CarrierText_showAirplaneMode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mShowAirplaneMode:Z

    .line 59
    sget v0, Lcom/android/systemui/R$styleable;->CarrierText_showMissingSim:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mShowMissingSim:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    new-instance p1, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void

    :catchall_0
    move-exception p0

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    throw p0
.end method


# virtual methods
.method public getShowAirplaneMode()Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/android/keyguard/CarrierText;->mShowAirplaneMode:Z

    return p0
.end method

.method public getShowMissingSim()Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/android/keyguard/CarrierText;->mShowMissingSim:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 131
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onAttachedToWindow()V

    .line 133
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSlimIndicatorVisibilityHelper:Lcom/android/keyguard/CarrierText$SlimIndicatorVisibilityHelper;

    .line 134
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    .line 133
    invoke-virtual {v0, v1, p0}, Lcom/android/keyguard/CarrierText$SlimIndicatorVisibilityHelper;->attach(Ljava/lang/String;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrierTextSize()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 140
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onDetachedFromWindow()V

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSlimIndicatorVisibilityHelper:Lcom/android/keyguard/CarrierText$SlimIndicatorVisibilityHelper;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/keyguard/CarrierText$SlimIndicatorVisibilityHelper;->detach(Ljava/lang/String;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 88
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onFinishInflate()V

    .line 89
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrierTextSize()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 71
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 73
    :cond_0
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSlimIndicatorVisibilityHelper:Lcom/android/keyguard/CarrierText$SlimIndicatorVisibilityHelper;

    .line 150
    invoke-virtual {v0, p1}, Lcom/android/keyguard/CarrierText$SlimIndicatorVisibilityHelper;->refreshVisibility(I)I

    move-result p1

    .line 148
    invoke-super {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    return-void
.end method

.method protected updateCarrierTextSize()V
    .locals 2

    .line 100
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getFontSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
