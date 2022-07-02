.class public final Lcom/android/systemui/qs/bar/QSMediaPlayerBar_Factory;
.super Ljava/lang/Object;
.source "QSMediaPlayerBar_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/bar/QSMediaPlayerBar;",
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

.field private final mediaControlPanelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SecMediaControlPanel;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPlayerDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SecQSMediaPlayerData;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SecMediaControlPanel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SecQSMediaPlayerData;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar_Factory;->mediaDataManagerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar_Factory;->mediaControlPanelProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p4, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p5, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar_Factory;->mediaLoggerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p6, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar_Factory;->mediaPlayerDataProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/bar/QSMediaPlayerBar_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SecMediaControlPanel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SecQSMediaPlayerData;",
            ">;)",
            "Lcom/android/systemui/qs/bar/QSMediaPlayerBar_Factory;"
        }
    .end annotation

    .line 59
    new-instance v7, Lcom/android/systemui/qs/bar/QSMediaPlayerBar_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/media/MediaDataManager;Ljavax/inject/Provider;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/media/MediaLogger;Lcom/android/systemui/media/SecQSMediaPlayerData;)Lcom/android/systemui/qs/bar/QSMediaPlayerBar;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/media/MediaDataManager;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SecMediaControlPanel;",
            ">;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/media/MediaLogger;",
            "Lcom/android/systemui/media/SecQSMediaPlayerData;",
            ")",
            "Lcom/android/systemui/qs/bar/QSMediaPlayerBar;"
        }
    .end annotation

    .line 66
    new-instance v7, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;-><init>(Landroid/content/Context;Lcom/android/systemui/media/MediaDataManager;Ljavax/inject/Provider;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/media/MediaLogger;Lcom/android/systemui/media/SecQSMediaPlayerData;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/bar/QSMediaPlayerBar;
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar_Factory;->mediaDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/media/MediaDataManager;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar_Factory;->mediaControlPanelProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar_Factory;->mediaLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/media/MediaLogger;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar_Factory;->mediaPlayerDataProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/media/SecQSMediaPlayerData;

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/media/MediaDataManager;Ljavax/inject/Provider;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/media/MediaLogger;Lcom/android/systemui/media/SecQSMediaPlayerData;)Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar_Factory;->get()Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    move-result-object p0

    return-object p0
.end method
