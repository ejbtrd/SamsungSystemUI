.class Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;
.super Landroid/app/UserSwitchObserver;
.source "PluginFaceWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->registUserSwitchObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserSwitchComplete() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PluginFaceWidgetManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-static {p1}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->access$000(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V

    .line 161
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;->this$0:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-static {p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->access$100(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V

    return-void
.end method
