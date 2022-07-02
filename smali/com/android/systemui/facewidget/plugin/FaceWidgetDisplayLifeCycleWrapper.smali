.class public Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;
.super Ljava/lang/Object;
.source "FaceWidgetDisplayLifeCycleWrapper.java"

# interfaces
.implements Lcom/android/systemui/plugins/facewidget/PluginDisplayLifeCycle;


# instance fields
.field private mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field private mObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper$1;-><init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;->mObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    .line 32
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 34
    sget-boolean p0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_COVER:Z

    if-eqz p0, :cond_1

    .line 35
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    return-object p0
.end method


# virtual methods
.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getRealSize()Landroid/graphics/Point;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public initPlugin(Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    return-void
.end method

.method public isFolderOpened()Z
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result p0

    return p0
.end method
