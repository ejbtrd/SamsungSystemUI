.class Lcom/android/systemui/statusbar/LockscreenNotificationManager$2;
.super Ljava/lang/Object;
.source "LockscreenNotificationManager.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/LockscreenNotificationManager;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/LockscreenNotificationManagerLogger;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$2;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderStateChanged(Z)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$2;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->access$602(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Z)Z

    .line 145
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$2;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->access$700(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 146
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$2;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->access$500(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)V

    :cond_0
    return-void
.end method
