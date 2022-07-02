.class Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper$1;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "FaceWidgetKnoxStateMonitorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateLockscreenHiddenItems()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

    invoke-static {v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

    invoke-static {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->onUpdateLockscreenHiddenItems()V

    :cond_0
    return-void
.end method
