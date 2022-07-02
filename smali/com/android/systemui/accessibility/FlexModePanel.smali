.class public Lcom/android/systemui/accessibility/FlexModePanel;
.super Lcom/android/systemui/SystemUI;
.source "FlexModePanel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field mFlexPanelInteractor:Lcom/android/systemui/accessibility/FlexPanelInteractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 26
    new-instance p2, Lcom/android/systemui/accessibility/FlexPanelInteractor;

    invoke-direct {p2, p1, p3}, Lcom/android/systemui/accessibility/FlexPanelInteractor;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/FlexModePanel;->mFlexPanelInteractor:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexModePanel;->mFlexPanelInteractor:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/FlexPanelInteractor;->setRotation(I)V

    return-void
.end method

.method public start()V
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexModePanel;->mFlexPanelInteractor:Lcom/android/systemui/accessibility/FlexPanelInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/FlexPanelInteractor;->addCallback()V

    return-void
.end method
