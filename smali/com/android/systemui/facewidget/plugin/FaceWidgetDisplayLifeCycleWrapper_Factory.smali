.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper_Factory;
.super Ljava/lang/Object;
.source "FaceWidgetDisplayLifeCycleWrapper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final displayLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
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
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper_Factory;->displayLifecycleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            ">;)",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/keyguard/DisplayLifecycle;)Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;
    .locals 1

    .line 35
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;-><init>(Lcom/android/systemui/keyguard/DisplayLifecycle;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper_Factory;->displayLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper_Factory;->newInstance(Lcom/android/systemui/keyguard/DisplayLifecycle;)Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper_Factory;->get()Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;

    move-result-object p0

    return-object p0
.end method
