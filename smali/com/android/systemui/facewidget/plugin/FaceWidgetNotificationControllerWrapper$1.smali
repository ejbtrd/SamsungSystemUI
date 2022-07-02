.class Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;
.super Ljava/lang/Object;
.source "FaceWidgetNotificationControllerWrapper.java"

# interfaces
.implements Lcom/android/systemui/media/MediaDataManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getMediaDataListener()Lcom/android/systemui/media/MediaDataManager$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;ZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/media/MediaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 98
    iget-object p4, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-static {p4}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 99
    invoke-static {}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->access$100()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMediaDataLoaded, "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p4, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-static {p4}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;

    move-result-object p4

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-static {p0, p3}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->access$200(Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;Lcom/android/systemui/media/MediaData;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;

    move-result-object p0

    invoke-interface {p4, p1, p2, p0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;)V

    :cond_0
    return-void
.end method

.method public onMediaDataRemoved(Ljava/lang/String;)V
    .locals 3

    .line 106
    invoke-static {}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaDataRemoved, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-static {v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-static {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;->onMediaDataRemoved(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/media/SmartspaceMediaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method
