.class public interface abstract Lcom/android/systemui/qs/dagger/QSFragmentModule;
.super Ljava/lang/Object;
.source "QSFragmentModule.java"


# direct methods
.method public static provideQSPanel(Landroid/view/View;)Lcom/android/systemui/qs/QSPanel;
    .locals 1

    .line 100
    sget v0, Lcom/android/systemui/R$id;->quick_settings_panel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    return-object p0
.end method

.method public static provideRootView(Lcom/android/systemui/qs/QSFragment;)Landroid/view/View;
    .locals 0

    .line 81
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static provideThemedContext(Landroid/view/View;)Landroid/content/Context;
    .locals 0

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static provideThemedLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 0

    .line 74
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public static providesMultiUserSWitch(Lcom/android/systemui/qs/buttons/QSButtonView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;
    .locals 1

    .line 94
    sget v0, Lcom/android/systemui/R$id;->multi_user_switch:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    return-object p0
.end method

.method public static providesQSButtonView(Landroid/view/View;)Lcom/android/systemui/qs/buttons/QSButtonView;
    .locals 1

    .line 195
    sget v0, Lcom/android/systemui/R$id;->qs_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/buttons/QSButtonView;

    return-object p0
.end method

.method public static providesQSContainerImpl(Landroid/view/View;)Lcom/android/systemui/qs/QSContainerImpl;
    .locals 1

    .line 106
    sget v0, Lcom/android/systemui/R$id;->quick_settings_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSContainerImpl;

    return-object p0
.end method

.method public static providesQSSecurityFooterView(Landroid/view/LayoutInflater;Lcom/android/systemui/qs/QSPanel;)Landroid/view/View;
    .locals 2

    .line 175
    sget v0, Lcom/android/systemui/R$layout;->sec_quick_settings_security_footer:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static providesQSUsingMediaPlayer(Landroid/content/Context;)Z
    .locals 0

    .line 183
    invoke-static {p0}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static providesQuickQSPanel(Lcom/android/systemui/qs/SecQuickStatusBarHeader;)Lcom/android/systemui/qs/QuickQSPanel;
    .locals 1

    .line 132
    sget v0, Lcom/android/systemui/R$id;->quick_qs_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QuickQSPanel;

    return-object p0
.end method

.method public static providesSecQSCutomizer(Landroid/view/View;)Lcom/android/systemui/qs/customize/SecQSCustomizer;
    .locals 1

    .line 164
    sget v0, Lcom/android/systemui/R$id;->sec_qs_customize:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    return-object p0
.end method

.method public static providesSecQSFooter(Lcom/android/systemui/qs/SecQSFooterViewController;)Lcom/android/systemui/qs/QSFooter;
    .locals 0

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-object p0
.end method

.method public static providesSecQSFooterView(Landroid/view/View;)Lcom/android/systemui/qs/SecQSFooterView;
    .locals 1

    .line 139
    sget v0, Lcom/android/systemui/R$id;->qs_footer:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/SecQSFooterView;

    return-object p0
.end method

.method public static providesSecQuickStatusBarHeader(Landroid/view/View;)Lcom/android/systemui/qs/SecQuickStatusBarHeader;
    .locals 1

    .line 124
    sget v0, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    return-object p0
.end method
