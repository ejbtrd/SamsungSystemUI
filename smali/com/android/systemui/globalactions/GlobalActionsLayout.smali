.class public abstract Lcom/android/systemui/globalactions/GlobalActionsLayout;
.super Lcom/android/systemui/MultiListLayout;
.source "GlobalActionsLayout.java"


# instance fields
.field mBackgroundsSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/MultiListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setBackgrounds()V
    .locals 4

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->global_actions_grid_background:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getBackgroundDrawable(I)Lcom/android/systemui/HardwareBgDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getSeparatedView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->global_actions_separated_background:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getBackgroundDrawable(I)Lcom/android/systemui/HardwareBgDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getSeparatedView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getBackgroundDrawable(I)Lcom/android/systemui/HardwareBgDrawable;
    .locals 2

    .line 66
    new-instance v0, Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, p0}, Lcom/android/systemui/HardwareBgDrawable;-><init>(ZZLandroid/content/Context;)V

    .line 67
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setTint(I)V

    return-object v0
.end method

.method protected getCurrentLayoutDirection()I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    return p0
.end method

.method protected getCurrentRotation()I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 111
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method protected getListView()Landroid/view/ViewGroup;
    .locals 1

    const v0, 0x102000a

    .line 152
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method protected getSeparatedView()Landroid/view/ViewGroup;
    .locals 1

    .line 147
    sget v0, Lcom/android/systemui/R$id;->separated_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method protected getWrapper()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsLayout;->mBackgroundsSet:Z

    if-nez p1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->setBackgrounds()V

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsLayout;->mBackgroundsSet:Z

    :cond_0
    return-void
.end method
