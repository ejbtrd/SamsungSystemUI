.class public Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;
.super Ljava/lang/Object;
.source "FaceWidgetPluginControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/facewidget/FaceWidgetController;


# instance fields
.field private mContainer:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

.field private mNotificationManager:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

.field private mPluginFaceWidgetManager:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/facewidget/FaceWidgetNotificationController;Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;->mNotificationManager:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;->mPluginFaceWidgetManager:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "FaceWidget state:"

    .line 30
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;->mPluginFaceWidgetManager:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    App version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;->mPluginFaceWidgetManager:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-virtual {v1}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->getAppPluginVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SystemUI version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x408

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;->mContainer:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    if-eqz p0, :cond_1

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "  disabled\n"

    .line 37
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getNotificationManager()Lcom/android/systemui/facewidget/FaceWidgetNotificationController;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;->mNotificationManager:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    return-object p0
.end method
