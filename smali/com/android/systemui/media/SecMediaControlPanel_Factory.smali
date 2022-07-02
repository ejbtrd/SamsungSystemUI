.class public final Lcom/android/systemui/media/SecMediaControlPanel_Factory;
.super Ljava/lang/Object;
.source "SecMediaControlPanel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/media/SecMediaControlPanel;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaCarouselControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaCarouselController;",
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

.field private final seekBarViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SecSeekBarViewModel;",
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
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SecSeekBarViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaCarouselController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaLogger;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/android/systemui/media/SecMediaControlPanel_Factory;->backgroundExecutorProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lcom/android/systemui/media/SecMediaControlPanel_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p4, p0, Lcom/android/systemui/media/SecMediaControlPanel_Factory;->seekBarViewModelProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lcom/android/systemui/media/SecMediaControlPanel_Factory;->mediaCarouselControllerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p6, p0, Lcom/android/systemui/media/SecMediaControlPanel_Factory;->mediaLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/SecMediaControlPanel_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SecSeekBarViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaCarouselController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaLogger;",
            ">;)",
            "Lcom/android/systemui/media/SecMediaControlPanel_Factory;"
        }
    .end annotation

    .line 56
    new-instance v7, Lcom/android/systemui/media/SecMediaControlPanel_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/SecMediaControlPanel_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newInstance(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/SecSeekBarViewModel;Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/media/MediaLogger;)Lcom/android/systemui/media/SecMediaControlPanel;
    .locals 8

    .line 62
    new-instance v7, Lcom/android/systemui/media/SecMediaControlPanel;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/SecMediaControlPanel;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/SecSeekBarViewModel;Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/media/MediaLogger;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/android/systemui/media/SecMediaControlPanel;
    .locals 7

    .line 47
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel_Factory;->backgroundExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel_Factory;->seekBarViewModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/media/SecSeekBarViewModel;

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel_Factory;->mediaCarouselControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/media/MediaCarouselController;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel_Factory;->mediaLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/media/MediaLogger;

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/media/SecMediaControlPanel_Factory;->newInstance(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/SecSeekBarViewModel;Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/media/MediaLogger;)Lcom/android/systemui/media/SecMediaControlPanel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaControlPanel_Factory;->get()Lcom/android/systemui/media/SecMediaControlPanel;

    move-result-object p0

    return-object p0
.end method
