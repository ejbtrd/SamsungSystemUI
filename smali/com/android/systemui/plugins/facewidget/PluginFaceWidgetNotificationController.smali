.class public interface abstract Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;
.super Ljava/lang/Object;
.source "PluginFaceWidgetNotificationController.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/SupportVersionChecker;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController$Callback;
    }
.end annotation


# virtual methods
.method public abstract addFaceWidgetMusicNotification(Ljava/lang/String;)V
.end method

.method public abstract init(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isFaceWidgetMusicNotification(Ljava/lang/String;)Z
.end method

.method public abstract isMusicFaceWidgetOn()Z
.end method

.method public abstract onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3fa
    .end annotation
.end method

.method public abstract onMediaDataRemoved(Ljava/lang/String;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3fa
    .end annotation
.end method

.method public abstract removeFaceWidgetMusicNotification(Ljava/lang/String;)V
.end method

.method public abstract updateFaceWidgetMusicNotificationKey()Z
.end method

.method public abstract updateFaceWidgetMusicNotificationPkg(Ljava/lang/String;)V
.end method
