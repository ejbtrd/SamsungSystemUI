.class public Lcom/android/systemui/qs/cinema/QSCinemaProvider;
.super Ljava/lang/Object;
.source "QSCinemaProvider.java"


# instance fields
.field private mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private mNotiScrollFraction:F

.field private mNotiScrollY:I

.field private mPanelExpanded:Z

.field private mPanelExpandedFraction:Z

.field private mPreLayoutDirection:I

.field private mPreOrientation:I

.field private mProviderToCompanyCallback:Lcom/android/systemui/qs/cinema/QSCinemaCompany$ProviderToCompanyCallback;

.field private mQSMinExpansionHeight:I

.field private mQSMinHeight:I

.field private final mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

.field private final mQSSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

.field private final mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mQs:Lcom/android/systemui/plugins/qs/QS;

.field private final mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

.field private final mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mPanelExpanded:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mPanelExpandedFraction:Z

    .line 56
    iput v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mNotiScrollY:I

    const/4 v1, 0x0

    .line 57
    iput v1, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mNotiScrollFraction:F

    .line 58
    iput v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mQSMinHeight:I

    .line 59
    iput v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mQSMinExpansionHeight:I

    .line 203
    iput v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mPreOrientation:I

    const/4 v0, -0x1

    .line 204
    iput v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mPreLayoutDirection:I

    .line 65
    iput-object p1, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mConfiguration:Landroid/content/res/Configuration;

    .line 67
    iput-object p2, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 68
    iput-object p3, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 69
    iput-object p4, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 70
    iput-object p5, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 71
    iput-object p6, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    .line 72
    iput-object p7, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mQSSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    return-void
.end method


# virtual methods
.method public getQSFragmentView()Landroid/view/View;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getQSPanelController()Lcom/android/systemui/qs/QSPanelController;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    return-object p0
.end method

.method public getQSTileHost()Lcom/android/systemui/qs/QSTileHost;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method public setCallback(Lcom/android/systemui/qs/cinema/QSCinemaCompany$ProviderToCompanyCallback;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mProviderToCompanyCallback:Lcom/android/systemui/qs/cinema/QSCinemaCompany$ProviderToCompanyCallback;

    return-void
.end method

.method public setCinemaConfiguration(Landroid/content/res/Configuration;)V
    .locals 6

    .line 207
    iget v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mPreOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const-string v3, " >> "

    const-string v4, "QSCinemaProvider"

    if-eq v0, v1, :cond_0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orientation is changed ! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mPreOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mPreOrientation:I

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 212
    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mPreLayoutDirection:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-eq v1, v5, :cond_1

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LayoutDirection is changed ! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mPreLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mPreLayoutDirection:I

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    .line 218
    iget-object v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mProviderToCompanyCallback:Lcom/android/systemui/qs/cinema/QSCinemaCompany$ProviderToCompanyCallback;

    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {v0}, Lcom/android/systemui/qs/cinema/QSCinemaCompany$ProviderToCompanyCallback;->updateFilm()V

    .line 222
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method
