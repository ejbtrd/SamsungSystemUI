.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper_Factory;
.super Ljava/lang/Object;
.source "FaceWidgetPluginLockManagerWrapper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final pluginLockMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper_Factory;->pluginLockMediatorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            ">;)",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/pluginlock/PluginLockMediator;)Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;
    .locals 1

    .line 36
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediator;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper_Factory;->pluginLockMediatorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-static {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper_Factory;->newInstance(Lcom/android/systemui/pluginlock/PluginLockMediator;)Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper_Factory;->get()Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;

    move-result-object p0

    return-object p0
.end method
