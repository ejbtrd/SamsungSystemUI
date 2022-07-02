.class public final Lcom/android/systemui/doze/DozeService_Factory;
.super Ljava/lang/Object;
.source "DozeService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/doze/DozeService;",
        ">;"
    }
.end annotation


# instance fields
.field private final dozeComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/dagger/DozeComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeServiceHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginAODManagerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginFaceWidgetManagerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
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
            "Lcom/android/systemui/doze/dagger/DozeComponent$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService_Factory;->dozeComponentBuilderProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lcom/android/systemui/doze/DozeService_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/android/systemui/doze/DozeService_Factory;->pluginAODManagerLazyProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p4, p0, Lcom/android/systemui/doze/DozeService_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p5, p0, Lcom/android/systemui/doze/DozeService_Factory;->pluginFaceWidgetManagerLazyProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lcom/android/systemui/doze/DozeService_Factory;->dozeServiceHostProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/doze/DozeService_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/dagger/DozeComponent$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            ">;)",
            "Lcom/android/systemui/doze/DozeService_Factory;"
        }
    .end annotation

    .line 61
    new-instance v7, Lcom/android/systemui/doze/DozeService_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/doze/DozeService_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newInstance(Lcom/android/systemui/doze/dagger/DozeComponent$Builder;Lcom/android/systemui/shared/plugins/PluginManager;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/doze/DozeService;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/doze/dagger/DozeComponent$Builder;",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            ")",
            "Lcom/android/systemui/doze/DozeService;"
        }
    .end annotation

    .line 68
    new-instance v7, Lcom/android/systemui/doze/DozeService;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/doze/DozeService;-><init>(Lcom/android/systemui/doze/dagger/DozeComponent$Builder;Lcom/android/systemui/shared/plugins/PluginManager;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeServiceHost;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/android/systemui/doze/DozeService;
    .locals 7

    .line 51
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService_Factory;->dozeComponentBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/doze/dagger/DozeComponent$Builder;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService_Factory;->pluginAODManagerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService_Factory;->pluginFaceWidgetManagerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v5

    iget-object p0, p0, Lcom/android/systemui/doze/DozeService_Factory;->dozeServiceHostProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/doze/DozeService_Factory;->newInstance(Lcom/android/systemui/doze/dagger/DozeComponent$Builder;Lcom/android/systemui/shared/plugins/PluginManager;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/doze/DozeService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService_Factory;->get()Lcom/android/systemui/doze/DozeService;

    move-result-object p0

    return-object p0
.end method
