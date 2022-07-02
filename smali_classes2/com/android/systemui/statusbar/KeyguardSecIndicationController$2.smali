.class Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;
.super Ljava/lang/Object;
.source "KeyguardSecIndicationController.java"

# interfaces
.implements Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardSecIndicationController;-><init>(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/app/IBatteryStats;Landroid/os/UserManager;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/lockstar/PluginLockStarManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedLockStarEnabled(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->updateFontSize()V

    .line 260
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->updateTextView()V

    :cond_0
    return-void
.end method
