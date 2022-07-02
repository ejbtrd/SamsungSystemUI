.class public Lcom/android/systemui/qs/cinema/QSCinemaCompany;
.super Ljava/lang/Object;
.source "QSCinemaCompany.java"

# interfaces
.implements Lcom/android/systemui/qs/cinema/QSCinemaFragmentAdaptor;
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/qs/PagedTileLayout$PageListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/cinema/QSCinemaCompany$ProviderToCompanyCallback;
    }
.end annotation


# instance fields
.field private final mDirector:Lcom/android/systemui/qs/cinema/QSCinemaDirector;

.field private final mLogger:Lcom/android/systemui/qs/cinema/QSCinemaLogger;

.field private final mProvider:Lcom/android/systemui/qs/cinema/QSCinemaProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/cinema/QSCinemaDirector;Lcom/android/systemui/qs/cinema/QSCinemaProvider;Lcom/android/systemui/qs/cinema/QSCinemaLogger;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->mDirector:Lcom/android/systemui/qs/cinema/QSCinemaDirector;

    .line 48
    iput-object p2, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->mProvider:Lcom/android/systemui/qs/cinema/QSCinemaProvider;

    .line 49
    new-instance p1, Lcom/android/systemui/qs/cinema/QSCinemaCompany$ProviderToCompanyCallback;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/cinema/QSCinemaCompany$ProviderToCompanyCallback;-><init>(Lcom/android/systemui/qs/cinema/QSCinemaCompany;)V

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->setCallback(Lcom/android/systemui/qs/cinema/QSCinemaCompany$ProviderToCompanyCallback;)V

    .line 50
    iput-object p3, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->mLogger:Lcom/android/systemui/qs/cinema/QSCinemaLogger;

    .line 52
    invoke-virtual {p2}, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->getQSTileHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 53
    invoke-virtual {p2}, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->getQSPanelController()Lcom/android/systemui/qs/QSPanelController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/ViewController;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 54
    invoke-virtual {p2}, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->getQSFragmentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 55
    invoke-virtual {p2}, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->getQSPanelController()Lcom/android/systemui/qs/QSPanelController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 58
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->getQSPanelController()Lcom/android/systemui/qs/QSPanelController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSPanelController;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->mProvider:Lcom/android/systemui/qs/cinema/QSCinemaProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->setCinemaConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    return-void
.end method

.method public onPageChanged(Z)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->mDirector:Lcom/android/systemui/qs/cinema/QSCinemaDirector;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/cinema/QSCinemaDirector;->onPageChanged(Z)V

    return-void
.end method

.method public onQsScrollingChanged()V
    .locals 0

    return-void
.end method

.method public onTilesChanged()V
    .locals 0

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->mLogger:Lcom/android/systemui/qs/cinema/QSCinemaLogger;

    invoke-virtual {p0}, Lcom/android/systemui/qs/cinema/QSCinemaLogger;->init()V

    return-void
.end method

.method public onViewCreated()V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->mProvider:Lcom/android/systemui/qs/cinema/QSCinemaProvider;

    invoke-virtual {p1}, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->getQSTileHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 153
    iget-object p0, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->mLogger:Lcom/android/systemui/qs/cinema/QSCinemaLogger;

    invoke-virtual {p0}, Lcom/android/systemui/qs/cinema/QSCinemaLogger;->destroy()V

    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 0

    return-void
.end method

.method public setPosition(F)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->mDirector:Lcom/android/systemui/qs/cinema/QSCinemaDirector;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/cinema/QSCinemaDirector;->setPosition(F)V

    return-void
.end method

.method public setShowCollapsedOnKeyguard(Z)V
    .locals 0

    return-void
.end method
