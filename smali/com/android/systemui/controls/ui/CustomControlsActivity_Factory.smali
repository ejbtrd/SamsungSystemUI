.class public final Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;
.super Ljava/lang/Object;
.source "CustomControlsActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/controls/ui/CustomControlsActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final auiFacadeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/AUIFacade;",
            ">;"
        }
    .end annotation
.end field

.field private final blurFacadeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/BlurFacade;",
            ">;"
        }
    .end annotation
.end field

.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsFragmentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final customUiControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/CustomControlsUiController;",
            ">;"
        }
    .end annotation
.end field

.field private final uiControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlsUiController;",
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
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlsUiController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/CustomControlsUiController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/BlurFacade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/AUIFacade;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;->uiControllerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;->customUiControllerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p4, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;->controlsUtilProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p5, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;->controlsFragmentFactoryProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;->blurFacadeProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p7, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;->auiFacadeProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlsUiController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/CustomControlsUiController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/BlurFacade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/AUIFacade;",
            ">;)",
            "Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;"
        }
    .end annotation

    .line 62
    new-instance v8, Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static newInstance(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/ControlsUiController;Lcom/android/systemui/controls/ui/CustomControlsUiController;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;Lcom/android/systemui/controls/ui/util/BlurFacade;Lcom/android/systemui/controls/ui/util/AUIFacade;)Lcom/android/systemui/controls/ui/CustomControlsActivity;
    .locals 9

    .line 69
    new-instance v8, Lcom/android/systemui/controls/ui/CustomControlsActivity;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/controls/ui/CustomControlsActivity;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/ControlsUiController;Lcom/android/systemui/controls/ui/CustomControlsUiController;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;Lcom/android/systemui/controls/ui/util/BlurFacade;Lcom/android/systemui/controls/ui/util/AUIFacade;)V

    return-object v8
.end method


# virtual methods
.method public get()Lcom/android/systemui/controls/ui/CustomControlsActivity;
    .locals 8

    .line 52
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;->uiControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/controls/ui/ControlsUiController;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;->customUiControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/controls/ui/CustomControlsUiController;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;->controlsUtilProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/controls/ui/util/ControlsUtil;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;->controlsFragmentFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;->blurFacadeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/controls/ui/util/BlurFacade;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;->auiFacadeProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/controls/ui/util/AUIFacade;

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;->newInstance(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/ControlsUiController;Lcom/android/systemui/controls/ui/CustomControlsUiController;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;Lcom/android/systemui/controls/ui/util/BlurFacade;Lcom/android/systemui/controls/ui/util/AUIFacade;)Lcom/android/systemui/controls/ui/CustomControlsActivity;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsActivity_Factory;->get()Lcom/android/systemui/controls/ui/CustomControlsActivity;

    move-result-object p0

    return-object p0
.end method
