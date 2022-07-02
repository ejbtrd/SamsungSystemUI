.class public final synthetic Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/MediaDataManager$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/MediaDataManager$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/MediaDataManager$Listener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/MediaDataManager$Listener;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/systemui/media/MediaData;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->$r8$lambda$1cFK99ctlbhcooJ5Ch1jp-k0nQk(Lcom/android/systemui/media/MediaDataManager$Listener;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    return-void
.end method
