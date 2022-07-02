.class public final Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;
.super Ljava/lang/Object;
.source "QSCinemaProvider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/cinema/QSCinemaProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final qsPanelControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSPanelController;",
            ">;"
        }
    .end annotation
.end field

.field private final qsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/qs/QS;",
            ">;"
        }
    .end annotation
.end field

.field private final qsTileHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;"
        }
    .end annotation
.end field

.field private final quickPanelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanel;",
            ">;"
        }
    .end annotation
.end field

.field private final quickQSPanelControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanelController;",
            ">;"
        }
    .end annotation
.end field

.field private final securityFooterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSSecurityFooter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/qs/QS;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSSecurityFooter;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p2, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;->qsProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p3, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;->quickPanelProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;->qsPanelControllerProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p5, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p6, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;->qsTileHostProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p7, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;->securityFooterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/qs/QS;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSSecurityFooter;",
            ">;)",
            "Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;"
        }
    .end annotation

    .line 61
    new-instance v8, Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/qs/cinema/QSCinemaProvider;
    .locals 9

    .line 67
    new-instance v8, Lcom/android/systemui/qs/cinema/QSCinemaProvider;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/cinema/QSCinemaProvider;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/QSSecurityFooter;)V

    return-object v8
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/cinema/QSCinemaProvider;
    .locals 8

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;->qsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/plugins/qs/QS;

    iget-object v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;->quickPanelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;->qsPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/qs/QSPanelController;

    iget-object v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/qs/QuickQSPanelController;

    iget-object v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;->qsTileHostProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/qs/QSTileHost;

    iget-object p0, p0, Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;->securityFooterProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/qs/cinema/QSCinemaProvider;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/qs/cinema/QSCinemaProvider_Factory;->get()Lcom/android/systemui/qs/cinema/QSCinemaProvider;

    move-result-object p0

    return-object p0
.end method
