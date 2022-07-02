.class Lcom/android/systemui/statusbar/LockscreenNotificationManager$3;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "LockscreenNotificationManager.java"


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
.method constructor <init>(Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$3;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 0

    .line 172
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$3;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->access$800(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$3;->this$0:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->access$100(Lcom/android/systemui/statusbar/LockscreenNotificationManager;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    return-void
.end method
