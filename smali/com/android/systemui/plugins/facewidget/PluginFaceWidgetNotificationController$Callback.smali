.class public interface abstract Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController$Callback;
.super Ljava/lang/Object;
.source "PluginFaceWidgetNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getActiveNotificationSize()I
.end method

.method public abstract getAllNotifications()Ljava/util/List;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x402
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntryKey(I)Ljava/lang/String;
.end method

.method public abstract getNotificationPackageName(I)Ljava/lang/String;
.end method

.method public abstract getNotificationUid(I)I
.end method
