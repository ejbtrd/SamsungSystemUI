.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl_Factory;
.super Ljava/lang/Object;
.source "FaceWidgetPluginControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final faceWidgetNotificationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/FaceWidgetNotificationController;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginFaceWidgetManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/FaceWidgetNotificationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl_Factory;->faceWidgetNotificationControllerProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl_Factory;->pluginFaceWidgetManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/FaceWidgetNotificationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            ">;)",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/facewidget/FaceWidgetNotificationController;Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;
    .locals 1

    .line 42
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;-><init>(Lcom/android/systemui/facewidget/FaceWidgetNotificationController;Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl_Factory;->faceWidgetNotificationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl_Factory;->pluginFaceWidgetManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-static {v0, p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl_Factory;->newInstance(Lcom/android/systemui/facewidget/FaceWidgetNotificationController;Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl_Factory;->get()Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;

    move-result-object p0

    return-object p0
.end method
