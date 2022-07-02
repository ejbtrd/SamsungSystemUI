.class public final Lcom/android/systemui/qs/customize/SecQSCustomizerController_Factory;
.super Ljava/lang/Object;
.source "SecQSCustomizerController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/customize/SecQSCustomizerController;",
        ">;"
    }
.end annotation


# instance fields
.field private final panelLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/logging/PanelLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final screenLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final tileQueryHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final viewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/logging/PanelLogger;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController_Factory;->viewProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController_Factory;->tileQueryHelperProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController_Factory;->panelLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/customize/SecQSCustomizerController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/logging/PanelLogger;",
            ">;)",
            "Lcom/android/systemui/qs/customize/SecQSCustomizerController_Factory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/SecQSCustomizerController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/qs/logging/PanelLogger;)Lcom/android/systemui/qs/customize/SecQSCustomizerController;
    .locals 1

    .line 50
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/qs/logging/PanelLogger;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/customize/SecQSCustomizerController;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController_Factory;->tileQueryHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController_Factory;->panelLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/logging/PanelLogger;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController_Factory;->newInstance(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/qs/logging/PanelLogger;)Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController_Factory;->get()Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    move-result-object p0

    return-object p0
.end method
