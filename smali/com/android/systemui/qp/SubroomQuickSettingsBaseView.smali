.class public Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;
.super Landroid/widget/FrameLayout;
.source "SubroomQuickSettingsBaseView.java"


# instance fields
.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mSettingsContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/util/InjectionInflationController;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 42
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->setSubscreenSettings(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 36
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 37
    sget v0, Lcom/android/systemui/R$id;->subscreen_quick_settings:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mSettingsContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setSubscreenSettings(I)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mSettingsContainer:Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
