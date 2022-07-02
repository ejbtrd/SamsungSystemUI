.class public interface abstract Lcom/android/systemui/plugins/subscreen/PluginSubScreen;
.super Ljava/lang/Object;
.source "PluginSubScreen.java"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_SUB_SCREEN"
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/subscreen/PluginSubScreen$Callback;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_SUB_SCREEN"

.field public static final SUB_ROOM_NETWORK:I = 0x12f

.field public static final SUB_ROOM_NOTIFICATION:I = 0x12d

.field public static final SUB_ROOM_QUICK_PANEL:I = 0x12c

.field public static final SUB_ROOM_WIDGET:I = 0x12e

.field public static final VERSION:I = 0x1


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    return-void
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSubScreenPreview()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSubScreenPreview(I)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSubScreenPreview(III)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public onDozeAmountChanged(F)V
    .locals 0

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFinishedGoingToSleep()V
    .locals 0

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 0

    return-void
.end method

.method public onFolderStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onLockDisabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onLockModeChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPackageDataCleared(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 0

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    return-void
.end method

.method public abstract onSubUIStarted(Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onSubUIStarted(Landroid/view/Window;Landroid/os/Bundle;)V
.end method

.method public abstract onSubUIStopped()V
.end method

.method public onUserUnlocked()V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public requestOpenAppPopup(Landroid/app/PendingIntent;Z)V
    .locals 0

    return-void
.end method

.method public requestOpenAppPopup(Landroid/app/PendingIntent;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract setPluginCallback(Lcom/android/systemui/plugins/subscreen/PluginSubScreen$Callback;)V
.end method
