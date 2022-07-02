.class Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;
.super Ljava/lang/Object;
.source "FaceWidgetWakefulnessLifecycleWrapper.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    invoke-static {v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    invoke-static {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->onFinishedGoingToSleep()V

    :cond_0
    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    invoke-static {v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    invoke-static {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->onFinishedWakingUp()V

    :cond_0
    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    invoke-static {v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    invoke-static {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->onStartedGoingToSleep()V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    invoke-static {v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    invoke-static {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->onStartedWakingUp()V

    :cond_0
    return-void
.end method
