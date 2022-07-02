.class Lcom/android/systemui/wmshell/BubblesManager$6;
.super Ljava/lang/Object;
.source "BubblesManager.java"

# interfaces
.implements Lcom/android/systemui/util/DesktopManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wmshell/BubblesManager;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/Bubbles;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/statusbar/IStatusBarService;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wmshell/BubblesManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/wmshell/BubblesManager;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$6;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 1

    .line 446
    const-class p1, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p1}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "Bubbles"

    const-string v0, "Dismiss all bubbles - reason : DEX standalone mode."

    .line 447
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$6;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    invoke-static {p0}, Lcom/android/systemui/wmshell/BubblesManager;->access$000(Lcom/android/systemui/wmshell/BubblesManager;)Lcom/android/wm/shell/bubbles/Bubbles;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/Bubbles;->dismissAllBubbles()V

    return-void
.end method
