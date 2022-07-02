.class Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper$1;
.super Ljava/lang/Object;
.source "FaceWidgetDisplayLifeCycleWrapper.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderStateChanged(Z)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;

    invoke-static {v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;->access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;

    invoke-static {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;->access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidget;->onFolderStateChanged(Z)V

    :cond_0
    return-void
.end method
