.class Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;
.super Ljava/lang/Object;
.source "FaceWidgetWallpaperUtilsWrapper.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FaceWidgetSystemUIWidgetCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;

    return-void
.end method


# virtual methods
.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;

    if-eqz v0, :cond_1

    long-to-int p1, p1

    int-to-long v0, p1

    .line 136
    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getChangeFlagsString(J)Ljava/lang/String;

    move-result-object p2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateStyle: updateFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", colors = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string p2, "null"

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p3}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FaceWidgetWallpaperUtilsWrapper"

    .line 137
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;

    invoke-interface {p0, p1, p3}, Lcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;->updateStyle(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method
