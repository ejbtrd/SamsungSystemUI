.class Lcom/android/systemui/doze/PluginAODManager$8;
.super Landroid/os/Handler;
.source "PluginAODManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/PluginAODManager;-><init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/subscreen/SubScreenManager;Ldagger/Lazy;Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/dump/DumpManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/os/Looper;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$8;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 510
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_EXPAND_NOTI_PANEL: mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager$8;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/doze/PluginAODManager;->access$2500(Lcom/android/systemui/doze/PluginAODManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$8;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$2500(Lcom/android/systemui/doze/PluginAODManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    .line 515
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$8;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$1400(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->animateExpandLockedShadePanel(Landroid/service/notification/StatusBarNotification;)V

    :cond_1
    :goto_0
    return-void
.end method
