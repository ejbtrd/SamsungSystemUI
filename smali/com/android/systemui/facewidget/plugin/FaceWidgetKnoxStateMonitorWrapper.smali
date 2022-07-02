.class public Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;
.super Ljava/lang/Object;
.source "FaceWidgetKnoxStateMonitorWrapper.java"

# interfaces
.implements Lcom/android/systemui/plugins/facewidget/PluginKnoxStateMonitor;


# instance fields
.field private final mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

.field private mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field private mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;


# direct methods
.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitor;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper$1;-><init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 32
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 33
    invoke-interface {p1, v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    return-object p0
.end method


# virtual methods
.method public initPlugin(Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mPluginFaceWidget:Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    return-void
.end method

.method public isLockscreenAllDisabled()Z
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isLockscreenAllDisabled()Z

    move-result p0

    return p0
.end method

.method public isLockscreenClockEnabled()Z
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isLockscreenClockEnabled()Z

    move-result p0

    return p0
.end method

.method public isLockscreenDateEnabled()Z
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isLockscreenDateEnabled()Z

    move-result p0

    return p0
.end method

.method public isLockscreenOwnerInfoEnabled()Z
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isLockscreenOwnerInfoEnabled()Z

    move-result p0

    return p0
.end method
