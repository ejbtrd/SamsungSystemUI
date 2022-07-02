.class public final Lcom/android/systemui/controls/management/ControlsReorderActivity_Factory;
.super Ljava/lang/Object;
.source "ControlsReorderActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/controls/management/ControlsReorderActivity;",
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

.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
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

.field private final layoutUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
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
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/AUIFacade;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity_Factory;->layoutUtilProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity_Factory;->controlsUtilProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity_Factory;->auiFacadeProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/management/ControlsReorderActivity_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/AUIFacade;",
            ">;)",
            "Lcom/android/systemui/controls/management/ControlsReorderActivity_Factory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/android/systemui/controls/management/ControlsReorderActivity_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/controls/management/ControlsReorderActivity_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/AUIFacade;)Lcom/android/systemui/controls/management/ControlsReorderActivity;
    .locals 1

    .line 51
    new-instance v0, Lcom/android/systemui/controls/management/ControlsReorderActivity;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/controls/management/ControlsReorderActivity;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/AUIFacade;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/controls/management/ControlsReorderActivity;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity_Factory;->layoutUtilProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity_Factory;->controlsUtilProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/ui/util/ControlsUtil;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity_Factory;->auiFacadeProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/ui/util/AUIFacade;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/controls/management/ControlsReorderActivity_Factory;->newInstance(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/AUIFacade;)Lcom/android/systemui/controls/management/ControlsReorderActivity;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsReorderActivity_Factory;->get()Lcom/android/systemui/controls/management/ControlsReorderActivity;

    move-result-object p0

    return-object p0
.end method
