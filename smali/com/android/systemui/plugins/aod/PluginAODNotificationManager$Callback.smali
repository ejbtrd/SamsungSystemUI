.class public interface abstract Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;
.super Ljava/lang/Object;
.source "PluginAODNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract animateExpandLockedShadePanel(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract clickNotification(Ljava/lang/String;)V
.end method

.method public abstract getNotificationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
.end method

.method public abstract requestActiveNotifications()V
.end method

.method public abstract requestVisibleNotifications()V
.end method

.method public abstract showSubScreenNotification(Ljava/lang/String;)V
.end method
