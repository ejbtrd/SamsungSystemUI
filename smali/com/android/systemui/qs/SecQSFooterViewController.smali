.class public Lcom/android/systemui/qs/SecQSFooterViewController;
.super Lcom/android/systemui/util/ViewController;
.source "SecQSFooterViewController.java"

# interfaces
.implements Lcom/android/systemui/qs/QSFooter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/qs/SecQSFooterView;",
        ">;",
        "Lcom/android/systemui/qs/QSFooter;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mExpanded:Z

.field private mListening:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private final mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

.field private final mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

.field private final mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field private final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static synthetic $r8$lambda$y0c-XCdxeUueUPCC-Gp_o3l1tCg(Lcom/android/systemui/qs/SecQSFooterViewController;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/SecQSFooterViewController;->lambda$onViewAttached$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/SecQSFooterView;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QSDetailDisplayer;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/tuner/TunerService;Lcom/android/internal/logging/MetricsLogger;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 69
    iput-object p2, p0, Lcom/android/systemui/qs/SecQSFooterViewController;->mUserManager:Landroid/os/UserManager;

    .line 70
    iput-object p3, p0, Lcom/android/systemui/qs/SecQSFooterViewController;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 71
    iput-object p4, p0, Lcom/android/systemui/qs/SecQSFooterViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 72
    iput-object p5, p0, Lcom/android/systemui/qs/SecQSFooterViewController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 73
    iput-object p6, p0, Lcom/android/systemui/qs/SecQSFooterViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 74
    iput-object p7, p0, Lcom/android/systemui/qs/SecQSFooterViewController;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 75
    iput-object p8, p0, Lcom/android/systemui/qs/SecQSFooterViewController;->mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    .line 76
    iput-object p9, p0, Lcom/android/systemui/qs/SecQSFooterViewController;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 77
    iput-object p10, p0, Lcom/android/systemui/qs/SecQSFooterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 78
    iput-object p11, p0, Lcom/android/systemui/qs/SecQSFooterViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 80
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/SecQSFooterView;

    sget p2, Lcom/android/systemui/R$id;->footer_page_indicator:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/PageIndicator;

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSFooterViewController;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    return-void
.end method

.method private isTunerEnabled()Z
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSFooterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onViewAttached$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/SecQSFooterView;

    sub-int/2addr p4, p2

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSFooterViewController;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanelController;->getNumQuickTiles()I

    move-result p0

    .line 87
    invoke-virtual {p1, p4, p0}, Lcom/android/systemui/qs/SecQSFooterView;->updateAnimator(II)V

    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/SecQSFooterView;

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQSFooterViewController;->isTunerEnabled()Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/qs/SecQSFooterView;->disable(IZ)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/SecQSFooterView;

    new-instance v1, Lcom/android/systemui/qs/SecQSFooterViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/SecQSFooterViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecQSFooterViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSFooterViewController;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSFooterViewController;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSPanelController;->setFooterPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecQSFooterViewController;->setListening(Z)V

    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQSFooterView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQSFooterView;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQSFooterViewController;->mExpanded:Z

    .line 105
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/SecQSFooterView;

    invoke-direct {p0}, Lcom/android/systemui/qs/SecQSFooterViewController;->isTunerEnabled()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/qs/SecQSFooterView;->setExpanded(ZZ)V

    return-void
.end method

.method public setExpansion(F)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQSFooterView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQSFooterView;->setExpansion(F)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQSFooterView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSFooterView;->setKeyguardShowing()V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQSFooterViewController;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 125
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecQSFooterViewController;->mListening:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/SecQSFooterView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
