.class Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;
.super Lcom/android/systemui/util/ViewController;
.source "SecQuickStatusBarHeaderController.java"

# interfaces
.implements Lcom/android/systemui/qs/PanelModeController$PanelModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/qs/SecQuickStatusBarHeader;",
        ">;",
        "Lcom/android/systemui/qs/PanelModeController$PanelModeChangeListener;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

.field private final mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field private final mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field private mListening:Z

.field private mLocationIndicatorsEnabled:Z

.field private mMicCameraIndicatorsEnabled:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

.field private final mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

.field private mPrivacyChipLogged:Z

.field private final mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

.field private final mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

.field private final mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field private final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SecQuickStatusBarHeader;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/qs/PanelModeController;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/privacy/PrivacyDialogController;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 90
    new-instance p1, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$1;-><init>(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    .line 123
    new-instance p1, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController$2;-><init>(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 151
    iput-object p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 152
    iput-object p3, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 153
    iput-object p4, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 154
    iput-object p6, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 157
    iput-object p9, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 158
    iput-object p10, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 159
    iput-object p11, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 160
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    sget p2, Lcom/android/systemui/R$id;->privacy_chip:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/privacy/OngoingPrivacyChip;

    iput-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    .line 163
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    sget p2, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 165
    new-instance p2, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    const-class p3, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {p2, p1, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/CommandQueue;)V

    iput-object p2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    if-eqz p8, :cond_0

    .line 168
    invoke-virtual {p8, p0}, Lcom/android/systemui/qs/PanelModeController;->addPanelModeChangeListener(Lcom/android/systemui/qs/PanelModeController$PanelModeChangeListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)Lcom/android/systemui/privacy/OngoingPrivacyChip;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->setChipVisibility(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)Lcom/android/systemui/privacy/PrivacyDialogController;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)Landroid/view/View;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)Ljava/util/List;
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->getIgnoredIconSlots()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)Landroid/content/Context;
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private getChipEnabled()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    if-eqz p0, :cond_0

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

.method private getIgnoredIconSlots()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->getChipEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    iget-boolean v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040cf2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040d08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    if-eqz v1, :cond_1

    .line 260
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1040d06

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private setChipVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->getChipEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logChipVisible(Z)V

    .line 239
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyChipLogged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mListening:Z

    if-eqz v0, :cond_1

    .line 240
    iput-boolean v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyChipLogged:Z

    .line 241
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/privacy/PrivacyChipEvent;->ONGOING_INDICATORS_CHIP_VIEW:Lcom/android/systemui/privacy/PrivacyChipEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logChipVisible(Z)V

    .line 246
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->setChipVisibility(Z)V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyDialogController;->dismissDialog()V

    return-void
.end method

.method public onPanelModeChanged()V
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->onPanelModeChanged()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setShouldRestrictIcons(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->onAttach(Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/qs/QuickQSPanelController;->setContentMargins(II)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    iget-object v2, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->getMicCameraAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    .line 183
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->getLocationAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->setChipVisibility(Z)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->setListening(Z)V

    .line 194
    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    .line 205
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 208
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mListening:Z

    .line 210
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setListening(Z)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickQSPanelController;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->refreshAllTiles()V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->switchTileLayout(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateResources()V

    :cond_2
    if-eqz p1, :cond_3

    .line 222
    iget-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyItemController;->getMicCameraAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    .line 223
    iget-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyItemController;->getLocationAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    .line 224
    iget-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-virtual {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    goto :goto_0

    .line 226
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyDialogController;->dismissDialog()V

    .line 227
    iget-object p1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-virtual {p1, v0}, Lcom/android/systemui/privacy/PrivacyItemController;->removeCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    .line 228
    iput-boolean v1, p0, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mPrivacyChipLogged:Z

    :goto_0
    return-void
.end method
