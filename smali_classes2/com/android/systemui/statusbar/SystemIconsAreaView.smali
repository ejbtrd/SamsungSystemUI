.class public Lcom/android/systemui/statusbar/SystemIconsAreaView;
.super Landroid/widget/LinearLayout;
.source "SystemIconsAreaView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 29
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 30
    sget-boolean p1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    if-eqz p1, :cond_1

    .line 31
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->excludeCutoutArea()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 32
    sget p1, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    if-eqz p0, :cond_1

    .line 34
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getX()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_1
    return-void
.end method
